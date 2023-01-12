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
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat4 : vec4<f32>;
  var x_230 : vec3<f32>;
  var u_xlat20 : f32;
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
  let x_144 : vec3<f32> = vs_TEXCOORD5;
  let x_149 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_154 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_156 : vec3<f32> = vs_TEXCOORD5;
  let x_159 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156.x, x_156.x, x_156.x)) + x_159);
  let x_163 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_165 : vec3<f32> = vs_TEXCOORD5;
  let x_168 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + x_168);
  let x_170 : vec3<f32> = u_xlat3;
  let x_173 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_170 + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_180 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_180 == 1.0f);
  let x_182 : bool = u_xlatb19;
  if (x_182) {
    let x_187 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_187 == 1.0f);
    let x_191 : vec3<f32> = vs_TEXCOORD5;
    let x_194 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_196 : vec3<f32> = (vec3<f32>(x_191.y, x_191.y, x_191.y) * vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_200 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_202 : vec3<f32> = vs_TEXCOORD5;
    let x_205 : vec4<f32> = u_xlat4;
    let x_207 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_211 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_213 : vec3<f32> = vs_TEXCOORD5;
    let x_216 : vec4<f32> = u_xlat4;
    let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat4;
    let x_224 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_226 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : bool = u_xlatb19;
    if (x_229) {
      let x_233 : vec4<f32> = u_xlat4;
      x_230 = vec3<f32>(x_233.x, x_233.y, x_233.z);
    } else {
      let x_236 : vec3<f32> = vs_TEXCOORD5;
      x_230 = x_236;
    }
    let x_237 : vec3<f32> = x_230;
    let x_238 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat4;
    let x_245 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_247 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + -(x_245));
    let x_248 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec4<f32> = u_xlat4;
    let x_253 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_254 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) * x_253);
    let x_255 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_255.x, x_254.x, x_254.y, x_254.z);
    let x_258 : f32 = u_xlat4.y;
    u_xlat19 = ((x_258 * 0.25f) + 0.75f);
    let x_265 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_265 * 0.5f) + 0.75f);
    let x_269 : f32 = u_xlat19;
    let x_270 : f32 = u_xlat20;
    u_xlat4.x = max(x_269, x_270);
    let x_281 : vec4<f32> = u_xlat4;
    let x_283 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_281.x, x_281.z, x_281.w));
    u_xlat4 = x_283;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_290, x_292);
  let x_294 : f32 = u_xlat19;
  u_xlat19 = clamp(x_294, 0.0f, 1.0f);
  let x_297 : vec3<f32> = u_xlat3;
  let x_298 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_297, x_298);
  let x_305 : f32 = u_xlat20;
  let x_307 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_305, x_305));
  u_xlat20 = x_307.x;
  let x_309 : f32 = u_xlat19;
  let x_310 : f32 = u_xlat20;
  u_xlat19 = (x_309 * x_310);
  let x_312 : f32 = u_xlat19;
  let x_316 : vec4<f32> = x_33.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_312, x_312, x_312) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_320 : vec4<f32> = vs_TEXCOORD1;
  let x_323 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_320.x, x_320.y, x_320.z)), x_323);
  let x_325 : f32 = u_xlat19;
  let x_326 : f32 = u_xlat19;
  u_xlat19 = (x_325 + x_326);
  let x_328 : vec3<f32> = u_xlat2;
  let x_329 : f32 = u_xlat19;
  let x_333 : vec4<f32> = vs_TEXCOORD1;
  let x_336 : vec3<f32> = ((x_328 * -(vec3<f32>(x_329, x_329, x_329))) + -(vec3<f32>(x_333.x, x_333.y, x_333.z)));
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_342 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_342;
  let x_345 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_345;
  let x_348 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_348;
  let x_350 : vec3<f32> = u_xlat2;
  let x_351 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_350, x_351);
  let x_353 : f32 = u_xlat19;
  u_xlat19 = clamp(x_353, 0.0f, 1.0f);
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_355.x, x_355.y, x_355.z), x_357);
  let x_361 : f32 = u_xlat2.x;
  let x_363 : f32 = u_xlat2.x;
  u_xlat2.x = (x_361 * x_363);
  let x_367 : f32 = u_xlat2.x;
  let x_369 : f32 = u_xlat2.x;
  u_xlat2.x = (x_367 * x_369);
  let x_374 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_374) + 1.0f);
  let x_383 : vec3<f32> = u_xlat2;
  let x_385 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_383.x, x_383.y));
  u_xlat2.x = x_385.x;
  let x_389 : f32 = u_xlat2.x;
  u_xlat2.x = (x_389 * 16.0f);
  let x_393 : vec3<f32> = u_xlat0;
  let x_394 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_393 * vec3<f32>(x_394.x, x_394.x, x_394.x));
  let x_397 : vec3<f32> = u_xlat1;
  let x_398 : f32 = u_xlat18;
  let x_401 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_397 * vec3<f32>(x_398, x_398, x_398)) + x_401);
  let x_403 : f32 = u_xlat19;
  let x_405 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_403, x_403, x_403) * x_405);
  let x_409 : vec3<f32> = u_xlat0;
  let x_410 : vec3<f32> = u_xlat1;
  let x_411 : vec3<f32> = (x_409 * x_410);
  let x_412 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
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

