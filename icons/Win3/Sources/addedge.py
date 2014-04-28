from scipy.ndimage import imread, convolve
from scipy.misc import imsave
from sys import argv
import numpy

def main(argv):
    src = argv[1]
    dst = argv[2]
    offset = int(argv[3])
    f = imread(src)
    flt1 = numpy.ones((3, 3))
    flt2 = numpy.zeros((3, 3))
    flt2[1, 1] = 1
    b = f.copy()
    g = f.copy()
    for i in range(4):
        b[..., i] = convolve(f[..., i], flt1, mode='wrap', origin=offset)
        g[..., i] = convolve(f[..., i], flt2, mode='wrap', origin=offset)

    for i in range(3):
        b[..., i][b[..., 3].nonzero()] = 255

    c = g.copy()
    a1 = (256. - g[..., 3]) * b[..., 3] / 256. / 256.
    a2 = g[..., 3] / 256.
    c[..., :3] = b[..., :3] * a1[..., None] + g[..., :3] * a2[..., None]
    c[..., 3] = (a1 + a2) * 256.
    print c[..., 3].max()
    imsave(dst, c)

main(argv)
