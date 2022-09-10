import React from 'react'
import {Head, useForm} from '@inertiajs/inertia-react'
import DashboardLayout from "@/Layouts/Dashboard";

const FormSiswa = props => {
    const {data, setData, processing, post, errors} = useForm({
        nama: '',
        kelas_id: 0,
        nisn: undefined,
        no_telp: '',
        asal_sekolah: '',
        alamat: ''
    })

    const submitForm = e => {
        e.preventDefault()
        post(route('siswa.store'))
    }

    return (
        <div>
            <DashboardLayout props={props}>
                <Head title="Tambah Data Siswa"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
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
                                            {props.kelas.length > 0 ? props.kelas.map((kelas, key) => {
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
                                        {errors.asal_sekolah &&
                                            <small className="text-red-500">{errors.asal_sekolah}</small>}
                                    </div>
                                    <div className="mt-4">
                                        <label htmlFor="alamat" className="block mb-3">Alamat</label>
                                        <textarea className="textarea block textarea-primary"
                                                  value={data.alamat}
                                                  onChange={(alamat) => setData('alamat', alamat.target.value)}>
                                        </textarea>
                                        {errors.alamat && <small className="text-red-500">{errors.alamat}</small>}
                                    </div>
                                </div>
                            </div>
                            <button type="submit" disabled={processing}
                                    className="px-5 py-2.5 disabled:bg-blue-300 bg-blue-700 hover:bg-blue-800 rounded-md ease-in-out duration-150 text-white">Submit
                            </button>
                        </form>
                    </div>
                </div>
            </DashboardLayout>
        </div>
    )
}

const FormGuru = props => {
    const {data, setData, post, processing, errors} = useForm({
        nama: '',
        nip: undefined,
        no_telp: '',
        tgl_mulai_mengajar: 0,
        alamat: '',
    })

    const submitForm = e => {
        e.preventDefault()
        post(route('guru.store'))
    }

    return (
        <div>
            <DashboardLayout props={props}>
                <Head title="Tambah Data Guru"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
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
                                    className="px-5 py-2.5 disabled:bg-blue-300 bg-blue-700 hover:bg-blue-800 rounded-md ease-in-out duration-150 text-white">Submit
                            </button>
                        </form>
                    </div>
                </div>
            </DashboardLayout>
        </div>
    )
}

const FormKaryawan = props => {
    const {data, setData, post, processing, errors} = useForm({
        nama: '',
        nip: undefined,
        no_telp: '',
        alamat: '',
    })

    const submitForm = e => {
        e.preventDefault()
        post(route('karyawan.store'))
    }
    return (
        <div>
            <DashboardLayout props={props}>
                <Head title="Tambah Data Karyawan"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
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
                                    className="px-5 py-2.5 bg-blue-700 disabled:bg-blue-300 hover:bg-blue-800 rounded-md ease-in-out duration-150 text-white">Submit
                            </button>
                        </form>
                    </div>
                </div>
            </DashboardLayout>
        </div>
    )
}

const FormInventaris = props => {
    const {data, setData, post, processing, errors} = useForm({
        nama: '',
        jumlah: '',
        harga_satuan: undefined,
        tgl_pembelian: '',
        status: '',
    })

    const submitForm = e => {
        e.preventDefault()
        post(route('inventaris.store'))
    }

    return (
        <div>
            <DashboardLayout props={props}>
                <Head title="Tambah Data Inventaris"/>

                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
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
                </div>
            </DashboardLayout>
        </div>
    )
}

export default function CreateForm(props) {
    if (route().current('siswa.create')) {
        return FormSiswa(props)
    } else if (route().current('guru.create')) {
        return FormGuru(props)
    } else if (route().current('karyawan.create')) {
        return FormKaryawan(props)
    } else if (route().current('inventaris.create')) {
        return FormInventaris(props);
    }
}
