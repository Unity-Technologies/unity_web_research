struct PGlobals {
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
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat3 : vec4<f32>;
  var x_201 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat18 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_81.x, x_81.y));
  u_xlat2 = vec3<f32>(x_83.x, x_83.y, x_83.w);
  let x_88 : f32 = u_xlat2.z;
  let x_91 : f32 = u_xlat2.x;
  u_xlat2.x = (x_88 * x_91);
  let x_94 : vec3<f32> = u_xlat2;
  let x_101 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_102 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_101.x, x_101.y, x_102.z);
  let x_105 : vec3<f32> = u_xlat2;
  let x_107 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(vec2<f32>(x_105.x, x_105.y), vec2<f32>(x_107.x, x_107.y));
  let x_110 : f32 = u_xlat19;
  u_xlat19 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat19;
  u_xlat19 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_116);
  let x_119 : vec3<f32> = u_xlat2;
  let x_122 : vec4<f32> = vs_TEXCOORD3;
  u_xlat8 = (vec3<f32>(x_119.y, x_119.y, x_119.y) * vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = vs_TEXCOORD2;
  let x_128 : vec3<f32> = u_xlat2;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat2 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.x, x_128.x, x_128.x)) + x_131);
  let x_134 : vec4<f32> = vs_TEXCOORD4;
  let x_136 : f32 = u_xlat19;
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136, x_136, x_136)) + x_139);
  let x_146 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_146 == 1.0f);
  let x_148 : bool = u_xlatb19;
  if (x_148) {
    let x_153 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_153 == 1.0f);
    let x_159 : vec3<f32> = vs_TEXCOORD5;
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_165 : vec3<f32> = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_170 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_172 : vec3<f32> = vs_TEXCOORD5;
    let x_175 : vec4<f32> = u_xlat3;
    let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.x, x_172.x, x_172.x)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
    let x_178 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_181 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_183 : vec3<f32> = vs_TEXCOORD5;
    let x_186 : vec4<f32> = u_xlat3;
    let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.z, x_183.z, x_183.z)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
    let x_189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat3;
    let x_195 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_197 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_200 : bool = u_xlatb19;
    if (x_200) {
      let x_204 : vec4<f32> = u_xlat3;
      x_201 = vec3<f32>(x_204.x, x_204.y, x_204.z);
    } else {
      let x_207 : vec3<f32> = vs_TEXCOORD5;
      x_201 = x_207;
    }
    let x_208 : vec3<f32> = x_201;
    let x_209 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_211 : vec4<f32> = u_xlat3;
    let x_216 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_218 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) + -(x_216));
    let x_219 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat3;
    let x_224 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) * x_224);
    let x_226 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_226.x, x_225.x, x_225.y, x_225.z);
    let x_229 : f32 = u_xlat3.y;
    u_xlat19 = ((x_229 * 0.25f) + 0.75f);
    let x_236 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_236 * 0.5f) + 0.75f);
    let x_240 : f32 = u_xlat19;
    let x_241 : f32 = u_xlat20;
    u_xlat3.x = max(x_240, x_241);
    let x_252 : vec4<f32> = u_xlat3;
    let x_254 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_252.x, x_252.z, x_252.w));
    u_xlat3 = x_254;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_261, x_263);
  let x_265 : f32 = u_xlat19;
  u_xlat19 = clamp(x_265, 0.0f, 1.0f);
  let x_268 : f32 = u_xlat19;
  let x_272 : vec4<f32> = x_33.x_LightColor0;
  let x_274 : vec3<f32> = (vec3<f32>(x_268, x_268, x_268) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec4<f32> = vs_TEXCOORD1;
  let x_281 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_278.x, x_278.y, x_278.z)), x_281);
  let x_283 : f32 = u_xlat19;
  let x_284 : f32 = u_xlat19;
  u_xlat19 = (x_283 + x_284);
  let x_287 : vec3<f32> = u_xlat2;
  let x_288 : f32 = u_xlat19;
  let x_292 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = ((x_287 * -(vec3<f32>(x_288, x_288, x_288))) + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_299 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_299;
  let x_302 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_302;
  let x_305 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_305;
  let x_307 : vec3<f32> = u_xlat2;
  let x_308 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_307, x_308);
  let x_310 : f32 = u_xlat19;
  u_xlat19 = clamp(x_310, 0.0f, 1.0f);
  let x_312 : vec3<f32> = u_xlat4;
  let x_313 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(x_312, x_313);
  let x_317 : f32 = u_xlat2.x;
  let x_319 : f32 = u_xlat2.x;
  u_xlat2.x = (x_317 * x_319);
  let x_323 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat2.x;
  u_xlat2.x = (x_323 * x_325);
  let x_330 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_330) + 1.0f);
  let x_339 : vec3<f32> = u_xlat2;
  let x_341 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_339.x, x_339.y));
  u_xlat2.x = x_341.x;
  let x_345 : f32 = u_xlat2.x;
  u_xlat2.x = (x_345 * 16.0f);
  let x_349 : vec3<f32> = u_xlat0;
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_349 * vec3<f32>(x_350.x, x_350.x, x_350.x));
  let x_353 : vec3<f32> = u_xlat1;
  let x_354 : f32 = u_xlat18;
  let x_357 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_353 * vec3<f32>(x_354, x_354, x_354)) + x_357);
  let x_359 : f32 = u_xlat19;
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_359, x_359, x_359) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_366 : vec3<f32> = u_xlat0;
  let x_367 : vec3<f32> = u_xlat1;
  let x_368 : vec3<f32> = (x_366 * x_367);
  let x_369 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

