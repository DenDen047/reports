import numpy as np

def main():
    # body = np.array([
    #     465, 521, 207, 62, 52
    # ])
    # brain = np.array([
    #     423, 655, 406, 1320, 440
    # ])

    body = np.array([
        0.921, 1.175, -0.246, -0.902, -0.947
    ])
    brain = np.array([
        -0.581, 0.016, -0.625, 1.727, -0.537
    ])

    c1 = np.array([1.048, -0.283])

    for i in range(5):
        a = np.array([body[i], brain[i]])
        for j in range(5):
            b = np.array([body[j], brain[j]])
            d = np.linalg.norm(a - b)
        #     print('{}\t'.format(d), end='')
        # print('\n'.format(), end='')

    c2 = np.array([-0.5967, -0.581])
    print('{}\t'.format(np.linalg.norm(c1 - c2)), end='')


main()
