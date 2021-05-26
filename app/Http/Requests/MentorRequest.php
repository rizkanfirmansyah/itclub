<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MentorRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'string|required',
            'whatsapp' => 'nullable|numeric',
            'birth_date' => 'nullable',
            'sertifikasi' => 'nullable',
            'gender' => 'nullable',
            'instagram' => 'nullable',
            'profession' => 'string|required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2000',
        ];
    }
}
