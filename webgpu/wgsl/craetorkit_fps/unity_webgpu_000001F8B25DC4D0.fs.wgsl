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
  unity_WorldToLight : mat4x4<f32>,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlat3 : vec4<f32>;
  var x_150 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat12 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_31);
  let x_33 : f32 = u_xlat12;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat1 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat1;
  let x_57 : vec4<f32> = x_18.x_Color;
  u_xlat1 = (x_54 * vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat2 = (vec3<f32>(x_61.y, x_61.y, x_61.y) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_70 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_72 : vec3<f32> = vs_TEXCOORD2;
  let x_75 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_70.x, x_70.y, x_70.z) * vec3<f32>(x_72.x, x_72.x, x_72.x)) + x_75);
  let x_79 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_81 : vec3<f32> = vs_TEXCOORD2;
  let x_84 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.z, x_81.z, x_81.z)) + x_84);
  let x_86 : vec3<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat2 = (x_86 + vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_99 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb12 = (x_99 == 1.0f);
  let x_102 : bool = u_xlatb12;
  if (x_102) {
    let x_107 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb12 = (x_107 == 1.0f);
    let x_111 : vec3<f32> = vs_TEXCOORD2;
    let x_114 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_116 : vec3<f32> = (vec3<f32>(x_111.y, x_111.y, x_111.y) * vec3<f32>(x_114.x, x_114.y, x_114.z));
    let x_117 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
    let x_120 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_122 : vec3<f32> = vs_TEXCOORD2;
    let x_125 : vec4<f32> = u_xlat3;
    let x_127 : vec3<f32> = ((vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_122.x, x_122.x, x_122.x)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
    let x_128 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
    let x_131 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_133 : vec3<f32> = vs_TEXCOORD2;
    let x_136 : vec4<f32> = u_xlat3;
    let x_138 : vec3<f32> = ((vec3<f32>(x_131.x, x_131.y, x_131.z) * vec3<f32>(x_133.z, x_133.z, x_133.z)) + vec3<f32>(x_136.x, x_136.y, x_136.z));
    let x_139 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
    let x_141 : vec4<f32> = u_xlat3;
    let x_144 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_146 : vec3<f32> = (vec3<f32>(x_141.x, x_141.y, x_141.z) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_149 : bool = u_xlatb12;
    if (x_149) {
      let x_153 : vec4<f32> = u_xlat3;
      x_150 = vec3<f32>(x_153.x, x_153.y, x_153.z);
    } else {
      let x_156 : vec3<f32> = vs_TEXCOORD2;
      x_150 = x_156;
    }
    let x_157 : vec3<f32> = x_150;
    let x_158 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
    let x_160 : vec4<f32> = u_xlat3;
    let x_165 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_167 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + -(x_165));
    let x_168 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
    let x_170 : vec4<f32> = u_xlat3;
    let x_174 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_175 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) * x_174);
    let x_176 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_176.x, x_175.x, x_175.y, x_175.z);
    let x_179 : f32 = u_xlat3.y;
    u_xlat12 = ((x_179 * 0.25f) + 0.75f);
    let x_187 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_187 * 0.5f) + 0.75f);
    let x_191 : f32 = u_xlat12;
    let x_192 : f32 = u_xlat13;
    u_xlat3.x = max(x_191, x_192);
    let x_203 : vec4<f32> = u_xlat3;
    let x_205 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_203.x, x_203.z, x_203.w));
    u_xlat3 = x_205;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_212 : vec4<f32> = u_xlat3;
  let x_214 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat12 = dot(x_212, x_214);
  let x_216 : f32 = u_xlat12;
  u_xlat12 = clamp(x_216, 0.0f, 1.0f);
  let x_219 : vec3<f32> = u_xlat2;
  let x_220 : vec3<f32> = u_xlat2;
  u_xlat13 = dot(x_219, x_220);
  let x_227 : f32 = u_xlat13;
  let x_229 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_227, x_227));
  u_xlat13 = x_229.x;
  let x_231 : f32 = u_xlat12;
  let x_232 : f32 = u_xlat13;
  u_xlat12 = (x_231 * x_232);
  let x_234 : f32 = u_xlat12;
  let x_238 : vec4<f32> = x_18.x_LightColor0;
  u_xlat2 = (vec3<f32>(x_234, x_234, x_234) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_242 : vec3<f32> = vs_TEXCOORD1;
  let x_243 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_242, x_243);
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_247, 0.0f);
  let x_251 : vec3<f32> = u_xlat1;
  let x_252 : vec3<f32> = u_xlat2;
  u_xlat4 = (x_251 * x_252);
  let x_256 : vec3<f32> = u_xlat0;
  let x_258 : vec3<f32> = u_xlat4;
  let x_259 : vec3<f32> = (vec3<f32>(x_256.x, x_256.x, x_256.x) * x_258);
  let x_260 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

