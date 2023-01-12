struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat1 : vec4<f32>;
  var x_103 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_47 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb6 = (x_47 == 1.0f);
  let x_50 : bool = u_xlatb6;
  if (x_50) {
    let x_55 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb6 = (x_55 == 1.0f);
    let x_61 : vec3<f32> = vs_TEXCOORD2;
    let x_66 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_68 : vec3<f32> = (vec3<f32>(x_61.y, x_61.y, x_61.y) * vec3<f32>(x_66.x, x_66.y, x_66.z));
    let x_69 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
    let x_73 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_75 : vec3<f32> = vs_TEXCOORD2;
    let x_78 : vec4<f32> = u_xlat1;
    let x_80 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_75.x, x_75.x, x_75.x)) + vec3<f32>(x_78.x, x_78.y, x_78.z));
    let x_81 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
    let x_84 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_86 : vec3<f32> = vs_TEXCOORD2;
    let x_89 : vec4<f32> = u_xlat1;
    let x_91 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_86.z, x_86.z, x_86.z)) + vec3<f32>(x_89.x, x_89.y, x_89.z));
    let x_92 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
    let x_94 : vec4<f32> = u_xlat1;
    let x_97 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_99 : vec3<f32> = (vec3<f32>(x_94.x, x_94.y, x_94.z) + vec3<f32>(x_97.x, x_97.y, x_97.z));
    let x_100 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
    let x_102 : bool = u_xlatb6;
    if (x_102) {
      let x_106 : vec4<f32> = u_xlat1;
      x_103 = vec3<f32>(x_106.x, x_106.y, x_106.z);
    } else {
      let x_109 : vec3<f32> = vs_TEXCOORD2;
      x_103 = x_109;
    }
    let x_110 : vec3<f32> = x_103;
    let x_111 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
    let x_113 : vec4<f32> = u_xlat1;
    let x_118 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_120 : vec3<f32> = (vec3<f32>(x_113.x, x_113.y, x_113.z) + -(x_118));
    let x_121 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
    let x_123 : vec4<f32> = u_xlat1;
    let x_127 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_128 : vec3<f32> = (vec3<f32>(x_123.x, x_123.y, x_123.z) * x_127);
    let x_129 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_129.x, x_128.x, x_128.y, x_128.z);
    let x_134 : f32 = u_xlat1.y;
    u_xlat6 = ((x_134 * 0.25f) + 0.75f);
    let x_142 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat3 = ((x_142 * 0.5f) + 0.75f);
    let x_146 : f32 = u_xlat6;
    let x_147 : f32 = u_xlat3;
    u_xlat1.x = max(x_146, x_147);
    let x_158 : vec4<f32> = u_xlat1;
    let x_160 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_158.x, x_158.z, x_158.w));
    u_xlat1 = x_160;
  } else {
    u_xlat1.x = 1.0f;
    u_xlat1.y = 1.0f;
    u_xlat1.z = 1.0f;
    u_xlat1.w = 1.0f;
  }
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat6 = dot(x_167, x_169);
  let x_171 : f32 = u_xlat6;
  u_xlat6 = clamp(x_171, 0.0f, 1.0f);
  let x_174 : f32 = u_xlat6;
  let x_178 : vec4<f32> = x_31.x_LightColor0;
  let x_180 : vec3<f32> = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec3<f32> = vs_TEXCOORD1;
  let x_186 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat6 = dot(x_184, vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat6;
  u_xlat6 = max(x_189, 0.0f);
  let x_191 : vec3<f32> = u_xlat0;
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_191 * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : f32 = u_xlat6;
  let x_197 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_195, x_195, x_195) * x_197);
  let x_201 : f32 = vs_TEXCOORD5;
  u_xlat6 = x_201;
  let x_202 : f32 = u_xlat6;
  u_xlat6 = clamp(x_202, 0.0f, 1.0f);
  let x_206 : vec3<f32> = u_xlat0;
  let x_207 : f32 = u_xlat6;
  let x_209 : vec3<f32> = (x_206 * vec3<f32>(x_207, x_207, x_207));
  let x_210 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

