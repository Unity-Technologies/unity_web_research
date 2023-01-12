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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb19 : bool;
  var u_xlat4 : vec4<f32>;
  var x_226 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlatb20 : bool;
  var u_xlat21 : f32;
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
  let x_145 : vec3<f32> = vs_TEXCOORD5;
  let x_150 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_145.y, x_145.y, x_145.y, x_145.y) * x_150);
  let x_154 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_155 : vec3<f32> = vs_TEXCOORD5;
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_154 * vec4<f32>(x_155.x, x_155.x, x_155.x, x_155.x)) + x_158);
  let x_162 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_163 : vec3<f32> = vs_TEXCOORD5;
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_162 * vec4<f32>(x_163.z, x_163.z, x_163.z, x_163.z)) + x_166);
  let x_168 : vec4<f32> = u_xlat3;
  let x_171 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_168 + x_171);
  let x_177 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_177 == 1.0f);
  let x_179 : bool = u_xlatb19;
  if (x_179) {
    let x_184 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_184 == 1.0f);
    let x_187 : vec3<f32> = vs_TEXCOORD5;
    let x_190 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_192 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_196 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_198 : vec3<f32> = vs_TEXCOORD5;
    let x_201 : vec4<f32> = u_xlat4;
    let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
    let x_204 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
    let x_207 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_209 : vec3<f32> = vs_TEXCOORD5;
    let x_212 : vec4<f32> = u_xlat4;
    let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.z, x_209.z, x_209.z)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_217 : vec4<f32> = u_xlat4;
    let x_220 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_222 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) + vec3<f32>(x_220.x, x_220.y, x_220.z));
    let x_223 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    let x_225 : bool = u_xlatb19;
    if (x_225) {
      let x_229 : vec4<f32> = u_xlat4;
      x_226 = vec3<f32>(x_229.x, x_229.y, x_229.z);
    } else {
      let x_232 : vec3<f32> = vs_TEXCOORD5;
      x_226 = x_232;
    }
    let x_233 : vec3<f32> = x_226;
    let x_234 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat4;
    let x_241 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_243 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) + -(x_241));
    let x_244 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : vec4<f32> = u_xlat4;
    let x_249 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) * x_249);
    let x_251 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_251.x, x_250.x, x_250.y, x_250.z);
    let x_254 : f32 = u_xlat4.y;
    u_xlat19 = ((x_254 * 0.25f) + 0.75f);
    let x_261 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_261 * 0.5f) + 0.75f);
    let x_265 : f32 = u_xlat19;
    let x_266 : f32 = u_xlat20;
    u_xlat4.x = max(x_265, x_266);
    let x_277 : vec4<f32> = u_xlat4;
    let x_279 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_277.x, x_277.z, x_277.w));
    u_xlat4 = x_279;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_286 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_286, x_288);
  let x_290 : f32 = u_xlat19;
  u_xlat19 = clamp(x_290, 0.0f, 1.0f);
  let x_295 : f32 = u_xlat3.z;
  u_xlatb20 = (0.0f < x_295);
  let x_297 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_297);
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec2<f32> = (vec2<f32>(x_299.x, x_299.y) / vec2<f32>(x_301.w, x_301.w));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec2<f32> = (vec2<f32>(x_306.x, x_306.y) + vec2<f32>(0.5f, 0.5f));
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_310.z, x_310.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_318.x, x_318.y));
  u_xlat21 = x_320.w;
  let x_322 : f32 = u_xlat20;
  let x_323 : f32 = u_xlat21;
  u_xlat20 = (x_322 * x_323);
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_336.x, x_336.x));
  u_xlat3.x = x_338.x;
  let x_341 : f32 = u_xlat20;
  let x_343 : f32 = u_xlat3.x;
  u_xlat20 = (x_341 * x_343);
  let x_345 : f32 = u_xlat19;
  let x_346 : f32 = u_xlat20;
  u_xlat19 = (x_345 * x_346);
  let x_348 : f32 = u_xlat19;
  let x_352 : vec4<f32> = x_33.x_LightColor0;
  let x_354 : vec3<f32> = (vec3<f32>(x_348, x_348, x_348) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = vs_TEXCOORD1;
  let x_361 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_358.x, x_358.y, x_358.z)), x_361);
  let x_363 : f32 = u_xlat19;
  let x_364 : f32 = u_xlat19;
  u_xlat19 = (x_363 + x_364);
  let x_366 : vec3<f32> = u_xlat2;
  let x_367 : f32 = u_xlat19;
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : vec3<f32> = ((x_366 * -(vec3<f32>(x_367, x_367, x_367))) + -(vec3<f32>(x_371.x, x_371.y, x_371.z)));
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_380 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_380;
  let x_383 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_383;
  let x_386 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_386;
  let x_388 : vec3<f32> = u_xlat2;
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_388, x_389);
  let x_391 : f32 = u_xlat19;
  u_xlat19 = clamp(x_391, 0.0f, 1.0f);
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_393.x, x_393.y, x_393.z), x_395);
  let x_399 : f32 = u_xlat2.x;
  let x_401 : f32 = u_xlat2.x;
  u_xlat2.x = (x_399 * x_401);
  let x_405 : f32 = u_xlat2.x;
  let x_407 : f32 = u_xlat2.x;
  u_xlat2.x = (x_405 * x_407);
  let x_412 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_412) + 1.0f);
  let x_421 : vec3<f32> = u_xlat2;
  let x_423 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_421.x, x_421.y));
  u_xlat2.x = x_423.x;
  let x_427 : f32 = u_xlat2.x;
  u_xlat2.x = (x_427 * 16.0f);
  let x_431 : vec3<f32> = u_xlat0;
  let x_432 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_431 * vec3<f32>(x_432.x, x_432.x, x_432.x));
  let x_435 : vec3<f32> = u_xlat1;
  let x_436 : f32 = u_xlat18;
  let x_439 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_435 * vec3<f32>(x_436, x_436, x_436)) + x_439);
  let x_441 : f32 = u_xlat19;
  let x_443 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_441, x_441, x_441) * vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_448 : vec3<f32> = u_xlat0;
  let x_449 : vec3<f32> = u_xlat1;
  let x_450 : vec3<f32> = (x_448 * x_449);
  let x_451 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
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

