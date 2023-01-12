struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlatb1 : bool;
  var u_xlatb7 : bool;
  var u_xlat7 : vec3<f32>;
  var x_171 : vec3<f32>;
  var u_xlat13 : vec2<f32>;
  var u_xlatb18 : bool;
  var x_322 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
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
  let x_42 : vec3<f32> = vs_TEXCOORD2;
  let x_47 : vec3<f32> = x_31.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_42) + x_47);
  let x_56 : f32 = x_31.unity_MatrixV[0i].z;
  u_xlat2.x = x_56;
  let x_62 : f32 = x_31.unity_MatrixV[1i].z;
  u_xlat2.y = x_62;
  let x_67 : f32 = x_31.unity_MatrixV[2i].z;
  u_xlat2.z = x_67;
  let x_70 : vec3<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(x_70, vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec3<f32> = vs_TEXCOORD2;
  let x_77 : vec4<f32> = x_31.unity_ShadowFadeCenterAndType;
  u_xlat1 = (x_74 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
  let x_81 : vec3<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(x_81, x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_86);
  let x_89 : f32 = u_xlat18;
  let x_92 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_89) + x_92);
  let x_97 : f32 = x_31.unity_ShadowFadeCenterAndType.w;
  let x_99 : f32 = u_xlat1.x;
  let x_101 : f32 = u_xlat18;
  u_xlat18 = ((x_97 * x_99) + x_101);
  let x_103 : f32 = u_xlat18;
  let x_106 : f32 = x_31.x_LightShadowData.z;
  let x_109 : f32 = x_31.x_LightShadowData.w;
  u_xlat18 = ((x_103 * x_106) + x_109);
  let x_111 : f32 = u_xlat18;
  u_xlat18 = clamp(x_111, 0.0f, 1.0f);
  let x_120 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_120 == 1.0f);
  let x_122 : bool = u_xlatb1;
  if (x_122) {
    let x_127 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb7 = (x_127 == 1.0f);
    let x_129 : vec3<f32> = vs_TEXCOORD2;
    let x_133 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_135 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
    let x_136 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
    let x_139 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_141 : vec3<f32> = vs_TEXCOORD2;
    let x_144 : vec4<f32> = u_xlat2;
    let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_150 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_152 : vec3<f32> = vs_TEXCOORD2;
    let x_155 : vec4<f32> = u_xlat2;
    let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
    let x_158 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
    let x_160 : vec4<f32> = u_xlat2;
    let x_164 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_166 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_170 : bool = u_xlatb7;
    if (x_170) {
      let x_174 : vec4<f32> = u_xlat2;
      x_171 = vec3<f32>(x_174.x, x_174.y, x_174.z);
    } else {
      let x_177 : vec3<f32> = vs_TEXCOORD2;
      x_171 = x_177;
    }
    let x_178 : vec3<f32> = x_171;
    u_xlat7 = x_178;
    let x_179 : vec3<f32> = u_xlat7;
    let x_182 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    u_xlat7 = (x_179 + -(x_182));
    let x_185 : vec3<f32> = u_xlat7;
    let x_188 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_189 : vec3<f32> = (x_185 * x_188);
    let x_190 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_190.x, x_189.x, x_189.y, x_189.z);
    let x_193 : f32 = u_xlat2.y;
    u_xlat7.x = ((x_193 * 0.25f) + 0.75f);
    let x_202 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat13.x = ((x_202 * 0.5f) + 0.75f);
    let x_208 : f32 = u_xlat13.x;
    let x_210 : f32 = u_xlat7.x;
    u_xlat2.x = max(x_208, x_210);
    let x_221 : vec4<f32> = u_xlat2;
    let x_223 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_221.x, x_221.z, x_221.w));
    u_xlat2 = x_223;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_229 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat7.x = dot(x_229, x_232);
  let x_236 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_236, 0.0f, 1.0f);
  let x_241 : vec4<f32> = vs_TEXCOORD5;
  let x_243 : vec4<f32> = vs_TEXCOORD5;
  u_xlat13 = (vec2<f32>(x_241.x, x_241.y) / vec2<f32>(x_243.w, x_243.w));
  let x_251 : vec2<f32> = u_xlat13;
  let x_252 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_251);
  u_xlat13.x = x_252.x;
  let x_256 : f32 = u_xlat13.x;
  let x_259 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_256) + x_259);
  let x_262 : f32 = u_xlat18;
  let x_264 : f32 = u_xlat7.x;
  let x_267 : f32 = u_xlat13.x;
  u_xlat18 = ((x_262 * x_264) + x_267);
  let x_269 : f32 = u_xlat18;
  let x_273 : vec4<f32> = x_31.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_269, x_269, x_269) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : bool = u_xlatb1;
  if (x_276) {
    let x_281 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_281 == 1.0f);
    let x_283 : vec3<f32> = vs_TEXCOORD2;
    let x_286 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_288 : vec3<f32> = (vec3<f32>(x_283.y, x_283.y, x_283.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_294 : vec3<f32> = vs_TEXCOORD2;
    let x_297 : vec4<f32> = u_xlat2;
    let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.x, x_294.x, x_294.x)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_303 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_305 : vec3<f32> = vs_TEXCOORD2;
    let x_308 : vec4<f32> = u_xlat2;
    let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.z, x_305.z, x_305.z)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
    let x_311 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat2;
    let x_316 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) + vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : bool = u_xlatb18;
    if (x_321) {
      let x_325 : vec4<f32> = u_xlat2;
      x_322 = vec3<f32>(x_325.x, x_325.y, x_325.z);
    } else {
      let x_328 : vec3<f32> = vs_TEXCOORD2;
      x_322 = x_328;
    }
    let x_329 : vec3<f32> = x_322;
    let x_330 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat2;
    let x_335 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + -(x_335));
    let x_338 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : vec4<f32> = u_xlat2;
    let x_343 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_344 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) * x_343);
    let x_345 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_345.x, x_344.x, x_344.y, x_344.z);
    let x_348 : f32 = u_xlat2.y;
    u_xlat18 = (x_348 * 0.25f);
    let x_351 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat1.x = (x_351 * 0.5f);
    let x_356 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat8 = ((-(x_356) * 0.5f) + 0.25f);
    let x_360 : f32 = u_xlat18;
    let x_362 : f32 = u_xlat1.x;
    u_xlat18 = max(x_360, x_362);
    let x_364 : f32 = u_xlat8;
    let x_365 : f32 = u_xlat18;
    u_xlat2.x = min(x_364, x_365);
    let x_372 : vec4<f32> = u_xlat2;
    let x_374 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_372.x, x_372.z, x_372.w));
    u_xlat3 = x_374;
    let x_376 : vec4<f32> = u_xlat2;
    let x_379 : vec3<f32> = (vec3<f32>(x_376.x, x_376.z, x_376.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_380 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
    let x_385 : vec4<f32> = u_xlat4;
    let x_387 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_385.x, x_385.y, x_385.z));
    u_xlat4 = x_387;
    let x_388 : vec4<f32> = u_xlat2;
    let x_391 : vec3<f32> = (vec3<f32>(x_388.x, x_388.z, x_388.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_397 : vec4<f32> = u_xlat2;
    let x_399 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_397.x, x_397.y, x_397.z));
    u_xlat2 = x_399;
    let x_402 : vec3<f32> = vs_TEXCOORD1;
    let x_403 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    u_xlat5.w = 1.0f;
    let x_406 : vec4<f32> = u_xlat3;
    let x_407 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_406, x_407);
    let x_410 : vec4<f32> = u_xlat4;
    let x_411 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_410, x_411);
    let x_414 : vec4<f32> = u_xlat2;
    let x_415 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_414, x_415);
  } else {
    let x_419 : vec3<f32> = vs_TEXCOORD1;
    let x_420 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    u_xlat2.w = 1.0f;
    let x_424 : vec4<f32> = x_31.unity_SHAr;
    let x_425 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_424, x_425);
    let x_429 : vec4<f32> = x_31.unity_SHAg;
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_429, x_430);
    let x_435 : vec4<f32> = x_31.unity_SHAb;
    let x_436 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_435, x_436);
  }
  let x_439 : vec4<f32> = u_xlat3;
  let x_442 : vec3<f32> = vs_TEXCOORD3;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + x_442);
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_449 : vec3<f32> = max(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec3<f32> = vs_TEXCOORD1;
  let x_454 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat18 = dot(x_452, vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : f32 = u_xlat18;
  u_xlat18 = max(x_457, 0.0f);
  let x_459 : vec3<f32> = u_xlat0;
  let x_460 : vec3<f32> = u_xlat7;
  u_xlat1 = (x_459 * x_460);
  let x_462 : vec3<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_462 * vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_468 : vec3<f32> = u_xlat1;
  let x_469 : f32 = u_xlat18;
  let x_472 : vec3<f32> = u_xlat0;
  let x_473 : vec3<f32> = ((x_468 * vec3<f32>(x_469, x_469, x_469)) + x_472);
  let x_474 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

