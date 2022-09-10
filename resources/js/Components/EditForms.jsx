import React from "react";
import {useForm} from '@inertiajs/inertia-react'

const EditFormSiswa = ({siswa}) => {
    const {data, setData, put, processing, errors} = useForm({
        nama: siswa.data.nama,
        kelas_id: siswa.data.kelas.id,
        nisn: siswa.data.nisn,
        no_telp: siswa.data.no_telp,
        asal_sekolah: siswa.data.asal_sekolah,
        alamat: siswa.data.alamat
    })

    function submitForm(e) {
        e.preventDefault()
        put(route('siswa.update', siswa.data.id))
    }

    return (
        <div>
            <h1 className="text-xl font-semibold">Edit Data Siswa: {siswa.data.nama}</h1>
            <form onSubmit={submitForm} className="space-y-6">
                <div className="grid sm:grid-cols-1 md:grid-cols-2">
                    <div>
                        <div className="mt-4">
                            <label htmlFor="nama" className="block mb-3">Nama Lengkap</label>
                            <input type="text" value={data.nama}
                                   id="nama"
                                   onChange={(nama) => setData('nama', nama.target.value)}
                                   className="input block  input-bordered input-primary w-full max-w-xs"/>
                            {errors.nama && <small className="text-red-500">{errors.nama}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="kelas" className="block mb-3">Kelas</label>
                            <select className="select select-primary w-full max-w-xs" id="kelas"
                                    onChange={(kelas) => setData('kelas_id', kelas.target.value)}>
                                {siswa.kelas.length > 0 ? siswa.kelas.map((kelas, key) => {
                                    return (
                                        <option value={kelas.id} key={key}>{kelas.kelas}</option>
                                    )
                                }) : (
                                    <option>Tidak ada data kelas tersedia</option>
                                )}
                            </select>
                            {errors.kelas_id && <small className="text-red-500">{errors.kelas_id}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="nisn" className="block mb-3">NISN</label>
                            <input type="text" value={data.nisn}
                                   id="nisn"
                                   onChange={(nisn) => setData('nisn', nisn.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.nisn && <small className="text-red-500">{errors.nisn}</small>}
                        </div>
                    </div>
                    <div>
                        <div className="mt-4">
                            <label htmlFor="telpon" className="block mb-3">No. Telepon</label>
                            <input type="text" value={data.no_telp}
                                   id="telpon"
                                   onChange={(telpon) => setData('no_telp', telpon.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.no_telp && <small className="text-red-500">{errors.no_telp}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="asal_sekolah" className="block mb-3">Asal Sekolah</label>
                            <input type="text" value={data.asal_sekolah}
                                   id="asal_sekolah"
                                   onChange={(sekolah) => setData('asal_sekolah', sekolah.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.asal_sekolah && <small className="text-red-500">{errors.asal_sekolah}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="alamat" className="block mb-3">Alamat</label>
                            <textarea className="textarea textarea-primary"
                                      value={data.alamat}
                                      onChange={(alamat) => setData('alamat', alamat.target.value)}>
                            </textarea>
                            {errors.alamat && <small className="text-red-500">{errors.alamat}</small>}
                        </div>
                    </div>
                </div>
                <button type="submit" disabled={processing}
                        className="px-5 py-2.5 bg-blue-700 hover:bg-blue-800 rounded-md ease-in-out duration-150 text-white">Submit
                </button>
            </form>
        </div>
    )
}

const EditFormGuru = ({guru}) => {
    const {data, setData, put, processing, errors} = useForm({
        nama: guru.guru.nama,
        nip: guru.guru.nip,
        no_telp: guru.guru.no_telp,
        tgl_mulai_mengajar: guru.guru.tgl_mulai_mengajar,
        alamat: guru.guru.alamat,
    })

    const submitForm = e => {
        e.preventDefault()
        put(route('guru.update', guru.guru.id))
    }

    return (
        <div>
            <h1 className="text-xl font-semibold">Edit Data Guru: {guru.guru.nama}</h1>
            <form onSubmit={submitForm} className="space-y-6">
                <div className="grid sm:grid-cols-1 md:grid-cols-2">
                    <div>
                        <div className="mt-4">
                            <label htmlFor="nama" className="block mb-3">Nama Lengkap</label>
                            <input type="text" value={data.nama}
                                   id="nama"
                                   placeholder="Masukkan Nama Lengkap Anda"
                                   onChange={(nama) => setData('nama', nama.target.value)}
                                   className="input block  input-bordered input-primary w-full max-w-xs"/>
                            {errors.nama && <small className="text-red-500">{errors.nama}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="nip" className="block mb-3">NIP</label>
                            <input type="text" value={data.nip}
                                   id="nip"
                                   placeholder="Masukkan NIP Anda"
                                   onChange={(nip) => setData('nip', nip.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.nip && <small className="text-red-500">{errors.nip}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="telpon" className="block mb-3">No. Telepon</label>
                            <input type="text" value={data.no_telp}
                                   id="telpon"
                                   placeholder="Masukkan No. Telpon Aktif Anda"
                                   onChange={(telpon) => setData('no_telp', telpon.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.no_telp && <small className="text-red-500">{errors.no_telp}</small>}
                        </div>
                    </div>
                    <div>
                        <div className="mt-4">
                            <label htmlFor="tgl_mulai_mengajar" className="block mb-3">Tanggal Mulai
                                Mengajar</label>
                            <input type="date" value={data.tgl_mulai_mengajar}
                                   id="tgl_mulai_mengajar"
                                   onChange={(tgl) => setData('tgl_mulai_mengajar', tgl.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.tgl_mulai_mengajar &&
                                <small className="text-red-500">{errors.tgl_mulai_mengajar}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="alamat" className="block mb-3">Alamat</label>
                            <textarea className="textarea block textarea-primary"
                                      value={data.alamat}
                                      placeholder="Masukkan Alamat Domisili Anda"
                                      onChange={(alamat) => setData('alamat', alamat.target.value)}>
                                        </textarea>
                            {errors.alamat && <small className="text-red-500">{errors.alamat}</small>}
                        </div>
                    </div>
                </div>
                <button type="submit" disabled={processing}
                        className="px-5 py-2.5 bg-blue-700 hover:bg-blue-800 rounded-md ease-in-out duration-150 text-white">Submit
                </button>
            </form>
        </div>
    )
}

const EditFormKaryawan = ({karyawan}) => {
    const {data, setData, put, processing, errors} = useForm({
        nama: karyawan.data.nama,
        nip: karyawan.data.nip,
        no_telp: karyawan.data.no_telp,
        alamat: karyawan.data.alamat,
    })

    const submitForm = e => {
        e.preventDefault()
        put(route('karyawan.update', karyawan.data.id))
    }
    return (
        <div>
            <h1 className="text-xl font-semibold">Edit Data Karyawan: {karyawan.data.nama}</h1>
            <form onSubmit={submitForm} className="space-y-6">
                <div className="grid sm:grid-cols-1 md:grid-cols-2">
                    <div>
                        <div className="mt-4">
                            <label htmlFor="nama" className="block mb-3">Nama Lengkap</label>
                            <input type="text" value={data.nama}
                                   id="nama"
                                   placeholder="Masukkan Nama Lengkap Anda"
                                   onChange={(nama) => setData('nama', nama.target.value)}
                                   className="input block  input-bordered input-primary w-full max-w-xs"/>
                            {errors.nama && <small className="text-red-500">{errors.nama}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="nip" className="block mb-3">NIP</label>
                            <input type="text" value={data.nip}
                                   id="nip"
                                   placeholder="Masukkan NIP Anda"
                                   onChange={(nip) => setData('nip', nip.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.nip && <small className="text-red-500">{errors.nip}</small>}
                        </div>
                    </div>
                    <div>
                        <div className="mt-4">
                            <label htmlFor="telpon" className="block mb-3">No. Telepon</label>
                            <input type="text" value={data.no_telp}
                                   id="telpon"
                                   placeholder="Masukkan No. Telpon Aktif Anda"
                                   onChange={(telpon) => setData('no_telp', telpon.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.no_telp && <small className="text-red-500">{errors.no_telp}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="alamat" className="block mb-3">Alamat</label>
                            <textarea className="textarea block textarea-primary"
                                      value={data.alamat}
                                      placeholder="Masukkan Alamat Domisili Anda"
                                      onChange={(alamat) => setData('alamat', alamat.target.value)}>
                                        </textarea>
                            {errors.alamat && <small className="text-red-500">{errors.alamat}</small>}
                        </div>
                    </div>
                </div>
                <button type="submit" disabled={processing}
                        className="px-5 py-2.5 bg-blue-700 hover:bg-blue-800 rounded-md ease-in-out duration-150 text-white">Submit
                </button>
            </form>
        </div>
    )
}

const EditFormInventaris = ({inventaris}) => {
    const {data, setData, put, processing, errors} = useForm({
        nama: inventaris.inventaris.nama,
        jumlah: inventaris.inventaris.jumlah,
        harga_satuan: inventaris.inventaris.harga_satuan,
        tgl_pembelian: inventaris.inventaris.tgl_pembelian,
        status: inventaris.inventaris.status,
    })

    const submitForm = e => {
        e.preventDefault()
        put(route('inventaris.update', inventaris.inventaris.id))
    }

    return (
        <div>
            <h1 className="text-xl font-semibold">Edit Data Inventaris: {inventaris.inventaris.nama}</h1>

            <form onSubmit={submitForm} className="space-y-6">
                <div className="grid sm:grid-cols-1 md:grid-cols-2">
                    <div>
                        <div className="mt-4">
                            <label htmlFor="nip" className="block mb-3">Nama</label>
                            <input type="text" value={data.nama}
                                   id="nama"
                                   placeholder="Masukkan Nama Lengkap Anda"
                                   onChange={(nama) => setData('nama', nama.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.nama && <small className="text-red-500">{errors.nama}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="telpon" className="block mb-3">Jumlah</label>
                            <input type="text" value={data.jumlah}
                                   id="telpon"
                                   placeholder="Masukkan Jumlah Inventaris"
                                   onChange={(jumlah) => setData('jumlah', jumlah.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.jumlah && <small className="text-red-500">{errors.jumlah}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="alamat" className="block mb-3">Harga Satuan</label>
                            <input type="text" value={data.harga_satuan}
                                   id="telpon"
                                   placeholder="Masukkan Harga Satuan Inventaris"
                                   onChange={(harga) => setData('harga_satuan', harga.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.harga_satuan && <small className="text-red-500">{errors.harga_satuan}</small>}
                        </div>
                    </div>
                    <div>
                        <div className="mt-4">
                            <label htmlFor="alamat" className="block mb-3">Tanggal Pembelian</label>
                            <input type="date" value={data.tgl_pembelian}
                                   id="telpon"
                                   onChange={(tanggal) => setData('tgl_pembelian', tanggal.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.tgl_pembelian && <small className="text-red-500">{errors.tgl_pembelian}</small>}
                        </div>
                        <div className="mt-4">
                            <label htmlFor="alamat" className="block mb-3">Status</label>
                            <input type="text" value={data.status}
                                   id="telpon"
                                   placeholder="Masukkan Status Inventaris"
                                   onChange={(status) => setData('status', status.target.value)}
                                   className="input block input-bordered input-primary w-full max-w-xs"/>
                            {errors.status && <small className="text-red-500">{errors.status}</small>}
                        </div>
                    </div>
                </div>
                <button type="submit" disabled={processing}
                        className="px-5 py-2.5 bg-blue-700 hover:bg-blue-800 disabled:bg-blue-300 rounded-md ease-in-out duration-150 text-white">Submit
                </button>
            </form>
        </div>
    )
}

export {
    EditFormSiswa,
    EditFormGuru,
    EditFormKaryawan,
    EditFormInventaris,
}

