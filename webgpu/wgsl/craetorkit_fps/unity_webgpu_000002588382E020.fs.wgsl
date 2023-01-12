struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_236 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_119 : vec3<f32> = (-(x_113) + x_118);
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_127 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat5.x = x_127;
  let x_132 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat5.y = x_132;
  let x_137 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat5.z = x_137;
  let x_140 : vec4<f32> = u_xlat4;
  let x_142 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_140.x, x_140.y, x_140.z), x_142);
  let x_144 : vec3<f32> = vs_TEXCOORD5;
  let x_147 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_150 : vec3<f32> = (x_144 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec4<f32> = u_xlat4;
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_154.x, x_154.y, x_154.z), vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_159);
  let x_161 : f32 = u_xlat22;
  let x_163 : f32 = u_xlat23;
  u_xlat23 = (-(x_161) + x_163);
  let x_167 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_168 : f32 = u_xlat23;
  let x_170 : f32 = u_xlat22;
  u_xlat22 = ((x_167 * x_168) + x_170);
  let x_172 : f32 = u_xlat22;
  let x_174 : f32 = x_33.x_LightShadowData.z;
  let x_177 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_172 * x_174) + x_177);
  let x_179 : f32 = u_xlat22;
  u_xlat22 = clamp(x_179, 0.0f, 1.0f);
  let x_188 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_188 == 1.0f);
  let x_190 : bool = u_xlatb23;
  if (x_190) {
    let x_194 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_194 == 1.0f);
    let x_196 : vec3<f32> = vs_TEXCOORD5;
    let x_200 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_202 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_206 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_208 : vec3<f32> = vs_TEXCOORD5;
    let x_211 : vec4<f32> = u_xlat4;
    let x_213 : vec3<f32> = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.x, x_208.x, x_208.x)) + vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_217 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_219 : vec3<f32> = vs_TEXCOORD5;
    let x_222 : vec4<f32> = u_xlat4;
    let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.z, x_219.z, x_219.z)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat4;
    let x_230 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_232 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : bool = u_xlatb23;
    if (x_235) {
      let x_239 : vec4<f32> = u_xlat4;
      x_236 = vec3<f32>(x_239.x, x_239.y, x_239.z);
    } else {
      let x_242 : vec3<f32> = vs_TEXCOORD5;
      x_236 = x_242;
    }
    let x_243 : vec3<f32> = x_236;
    let x_244 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : vec4<f32> = u_xlat4;
    let x_250 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_252 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + -(x_250));
    let x_253 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat4;
    let x_259 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) * x_259);
    let x_261 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_261.x, x_260.x, x_260.y, x_260.z);
    let x_264 : f32 = u_xlat4.y;
    u_xlat23 = ((x_264 * 0.25f) + 0.75f);
    let x_271 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_271 * 0.5f) + 0.75f);
    let x_275 : f32 = u_xlat23;
    let x_276 : f32 = u_xlat24;
    u_xlat4.x = max(x_275, x_276);
    let x_287 : vec4<f32> = u_xlat4;
    let x_289 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_287.x, x_287.z, x_287.w));
    u_xlat4 = x_289;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_295, x_297);
  let x_299 : f32 = u_xlat23;
  u_xlat23 = clamp(x_299, 0.0f, 1.0f);
  let x_302 : vec4<f32> = vs_TEXCOORD7;
  let x_304 : vec4<f32> = vs_TEXCOORD7;
  let x_306 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) / vec2<f32>(x_304.w, x_304.w));
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_314.x, x_314.y));
  u_xlat24 = x_316.x;
  let x_318 : f32 = u_xlat23;
  let x_319 : f32 = u_xlat24;
  u_xlat23 = (x_318 + -(x_319));
  let x_322 : f32 = u_xlat22;
  let x_323 : f32 = u_xlat23;
  let x_325 : f32 = u_xlat24;
  u_xlat22 = ((x_322 * x_323) + x_325);
  let x_327 : f32 = u_xlat22;
  let x_331 : vec4<f32> = x_33.x_LightColor0;
  let x_333 : vec3<f32> = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_338 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_338) + 1.0f);
  let x_344 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_344;
  let x_348 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_348;
  let x_351 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_351;
  let x_354 : vec4<f32> = vs_TEXCOORD1;
  let x_357 : f32 = u_xlat21;
  let x_360 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_354.x, x_354.y, x_354.z)) * vec3<f32>(x_357, x_357, x_357)) + x_360);
  let x_362 : vec3<f32> = u_xlat6;
  let x_363 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_362, x_363);
  let x_365 : f32 = u_xlat21;
  u_xlat21 = max(x_365, 0.001f);
  let x_368 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_368);
  let x_370 : f32 = u_xlat21;
  let x_372 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_370, x_370, x_370) * x_372);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), -(x_376));
  let x_379 : vec4<f32> = u_xlat2;
  let x_381 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), x_381);
  let x_383 : f32 = u_xlat23;
  u_xlat23 = clamp(x_383, 0.0f, 1.0f);
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), x_387);
  let x_391 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_391, 0.0f, 1.0f);
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_395, x_396);
  let x_398 : f32 = u_xlat9;
  u_xlat9 = clamp(x_398, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat9;
  let x_402 : f32 = u_xlat9;
  u_xlat16 = (x_401 * x_402);
  let x_404 : f32 = u_xlat16;
  let x_406 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_404, x_404), vec2<f32>(x_406, x_406));
  let x_409 : f32 = u_xlat16;
  u_xlat16 = (x_409 + -0.5f);
  let x_412 : f32 = u_xlat23;
  u_xlat3.x = (-(x_412) + 1.0f);
  let x_418 : f32 = u_xlat3.x;
  let x_420 : f32 = u_xlat3.x;
  u_xlat10 = (x_418 * x_420);
  let x_422 : f32 = u_xlat10;
  let x_423 : f32 = u_xlat10;
  u_xlat10 = (x_422 * x_423);
  let x_426 : f32 = u_xlat3.x;
  let x_427 : f32 = u_xlat10;
  u_xlat3.x = (x_426 * x_427);
  let x_430 : f32 = u_xlat16;
  let x_432 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_430 * x_432) + 1.0f);
  let x_436 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_436)) + 1.0f);
  let x_441 : f32 = u_xlat10;
  let x_442 : f32 = u_xlat10;
  u_xlat17 = (x_441 * x_442);
  let x_444 : f32 = u_xlat17;
  let x_445 : f32 = u_xlat17;
  u_xlat17 = (x_444 * x_445);
  let x_447 : f32 = u_xlat10;
  let x_448 : f32 = u_xlat17;
  u_xlat10 = (x_447 * x_448);
  let x_450 : f32 = u_xlat16;
  let x_451 : f32 = u_xlat10;
  u_xlat16 = ((x_450 * x_451) + 1.0f);
  let x_454 : f32 = u_xlat16;
  let x_456 : f32 = u_xlat3.x;
  u_xlat16 = (x_454 * x_456);
  let x_458 : f32 = u_xlat23;
  let x_459 : f32 = u_xlat16;
  u_xlat16 = (x_458 * x_459);
  let x_461 : f32 = u_xlat22;
  let x_462 : f32 = u_xlat22;
  u_xlat22 = (x_461 * x_462);
  let x_464 : f32 = u_xlat22;
  u_xlat22 = max(x_464, 0.002f);
  let x_467 : f32 = u_xlat22;
  u_xlat3.x = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat21;
  let x_474 : f32 = u_xlat3.x;
  let x_476 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_471) * x_474) + x_476);
  let x_478 : f32 = u_xlat23;
  let x_480 : f32 = u_xlat3.x;
  let x_482 : f32 = u_xlat22;
  u_xlat3.x = ((x_478 * x_480) + x_482);
  let x_485 : f32 = u_xlat21;
  let x_488 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_485) * x_488);
  let x_490 : f32 = u_xlat23;
  let x_491 : f32 = u_xlat10;
  let x_493 : f32 = u_xlat21;
  u_xlat21 = ((x_490 * x_491) + x_493);
  let x_495 : f32 = u_xlat21;
  u_xlat21 = (x_495 + 0.00001f);
  let x_498 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_498);
  let x_500 : f32 = u_xlat22;
  let x_501 : f32 = u_xlat22;
  u_xlat22 = (x_500 * x_501);
  let x_504 : f32 = u_xlat2.x;
  let x_505 : f32 = u_xlat22;
  let x_508 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_504 * x_505) + -(x_508));
  let x_513 : f32 = u_xlat3.x;
  let x_515 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_513 * x_515) + 1.0f);
  let x_519 : f32 = u_xlat22;
  u_xlat22 = (x_519 * 0.318309873f);
  let x_523 : f32 = u_xlat2.x;
  let x_525 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_523 * x_525) + 0.0000001f);
  let x_530 : f32 = u_xlat22;
  let x_532 : f32 = u_xlat2.x;
  u_xlat22 = (x_530 / x_532);
  let x_534 : f32 = u_xlat21;
  let x_535 : f32 = u_xlat22;
  u_xlat21 = (x_534 * x_535);
  let x_537 : f32 = u_xlat23;
  let x_538 : f32 = u_xlat21;
  u_xlat21 = (x_537 * x_538);
  let x_540 : f32 = u_xlat21;
  u_xlat21 = (x_540 * 3.141592741f);
  let x_543 : f32 = u_xlat21;
  u_xlat21 = max(x_543, 0.0f);
  let x_545 : vec3<f32> = u_xlat0;
  let x_546 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_545, x_546);
  let x_549 : f32 = u_xlat22;
  u_xlatb22 = !((x_549 == 0.0f));
  let x_551 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_551);
  let x_553 : f32 = u_xlat21;
  let x_554 : f32 = u_xlat22;
  u_xlat21 = (x_553 * x_554);
  let x_556 : f32 = u_xlat16;
  let x_558 : vec4<f32> = u_xlat4;
  let x_560 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_560.x, x_561.y, x_560.y, x_560.z);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_565, x_565, x_565));
  let x_568 : f32 = u_xlat9;
  u_xlat21 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat21;
  let x_572 : f32 = u_xlat21;
  u_xlat22 = (x_571 * x_572);
  let x_574 : f32 = u_xlat22;
  let x_575 : f32 = u_xlat22;
  u_xlat22 = (x_574 * x_575);
  let x_577 : f32 = u_xlat21;
  let x_578 : f32 = u_xlat22;
  u_xlat21 = (x_577 * x_578);
  let x_580 : vec3<f32> = u_xlat0;
  let x_583 : vec3<f32> = (-(x_580) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_584 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat4;
  let x_588 : f32 = u_xlat21;
  let x_591 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588, x_588, x_588)) + x_591);
  let x_593 : vec3<f32> = u_xlat0;
  let x_594 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_593 * x_594);
  let x_598 : vec3<f32> = u_xlat1;
  let x_599 : vec4<f32> = u_xlat2;
  let x_602 : vec3<f32> = u_xlat0;
  let x_603 : vec3<f32> = ((x_598 * vec3<f32>(x_599.x, x_599.z, x_599.w)) + x_602);
  let x_604 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

