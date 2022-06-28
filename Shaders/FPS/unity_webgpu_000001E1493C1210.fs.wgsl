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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlatb6 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlat3 : f32;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_104 : vec3<f32>;
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
      let x_107 : vec4<f32> = u_xlat1;
      x_104 = vec3<f32>(x_107.x, x_107.y, x_107.z);
    } else {
      let x_110 : vec3<f32> = vs_TEXCOORD2;
      x_104 = x_110;
    }
    let x_111 : vec3<f32> = x_104;
    let x_112 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
    let x_114 : vec4<f32> = u_xlat1;
    let x_119 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_121 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) + -(x_119));
    let x_122 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
    let x_124 : vec4<f32> = u_xlat1;
    let x_128 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_129 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) * x_128);
    let x_130 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_130.x, x_129.x, x_129.y, x_129.z);
    let x_135 : f32 = u_xlat1.y;
    u_xlat6 = ((x_135 * 0.25f) + 0.75f);
    let x_143 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat3 = ((x_143 * 0.5f) + 0.75f);
    let x_147 : f32 = u_xlat6;
    let x_148 : f32 = u_xlat3;
    u_xlat1.x = max(x_147, x_148);
    let x_159 : vec4<f32> = u_xlat1;
    let x_161 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_159.x, x_159.z, x_159.w));
    u_xlat1 = x_161;
  } else {
    u_xlat1.x = 1.0f;
    u_xlat1.y = 1.0f;
    u_xlat1.z = 1.0f;
    u_xlat1.w = 1.0f;
  }
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat6 = dot(x_168, x_170);
  let x_172 : f32 = u_xlat6;
  u_xlat6 = clamp(x_172, 0.0f, 1.0f);
  let x_175 : f32 = u_xlat6;
  let x_179 : vec4<f32> = x_31.x_LightColor0;
  let x_181 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat6 = dot(x_185, vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : f32 = u_xlat6;
  u_xlat6 = max(x_190, 0.0f);
  let x_192 : vec3<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_192 * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_198 : f32 = u_xlat6;
  let x_200 : vec3<f32> = u_xlat0;
  let x_201 : vec3<f32> = (vec3<f32>(x_198, x_198, x_198) * x_200);
  let x_202 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

