struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb43 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlatb44 : bool;
  var x_294 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_503 : f32;
  var x_515 : f32;
  var x_527 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_676 : f32;
  var x_688 : f32;
  var x_700 : f32;
  var u_xlat16 : f32;
  var u_xlat15 : f32;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat42;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_79 : vec4<f32> = x_37.x_Color;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat3;
  let x_88 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_95 : f32 = x_37.x_Time.x;
  let x_98 : f32 = x_37.x_MovementSpeed;
  let x_101 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_95 * x_98) + x_101);
  let x_105 : f32 = x_37.x_Time.x;
  let x_108 : f32 = x_37.x_MovementSpeed;
  let x_111 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_105) * x_108) + x_111);
  let x_119 : vec3<f32> = u_xlat5;
  let x_121 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_119.x, x_119.y));
  u_xlat5 = vec3<f32>(x_121.x, x_121.y, x_121.w);
  let x_124 : f32 = u_xlat5.z;
  let x_126 : f32 = u_xlat5.x;
  u_xlat5.x = (x_124 * x_126);
  let x_129 : vec3<f32> = u_xlat5;
  let x_136 : vec2<f32> = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_137 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_136.x, x_136.y, x_137.z);
  let x_139 : vec3<f32> = u_xlat5;
  let x_143 : f32 = x_37.x_NormalSacle;
  let x_145 : vec2<f32> = (vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143, x_143));
  let x_146 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_145.x, x_145.y, x_146.z);
  let x_149 : vec3<f32> = u_xlat5;
  let x_151 : vec3<f32> = u_xlat5;
  u_xlat43 = dot(vec2<f32>(x_149.x, x_149.y), vec2<f32>(x_151.x, x_151.y));
  let x_154 : f32 = u_xlat43;
  u_xlat43 = min(x_154, 1.0f);
  let x_157 : f32 = u_xlat43;
  u_xlat43 = (-(x_157) + 1.0f);
  let x_160 : f32 = u_xlat43;
  u_xlat5.z = sqrt(x_160);
  let x_164 : f32 = vs_COLOR0.w;
  u_xlat43 = (-(x_164) + 1.0f);
  let x_168 : f32 = u_xlat3.w;
  let x_170 : f32 = x_37.x_Color.w;
  let x_172 : f32 = u_xlat43;
  u_xlat43 = ((x_168 * x_170) + -(x_172));
  let x_178 : f32 = u_xlat43;
  u_xlatb43 = (x_178 < 0.0f);
  let x_181 : bool = u_xlatb43;
  if (((select(0i, 1i, x_181) * -1i) != 0i)) {
    discard;
  }
  let x_192 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_192;
  let x_195 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_195;
  let x_199 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_199;
  let x_201 : vec3<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(x_201, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec3<f32> = u_xlat0;
  let x_208 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_211 : vec3<f32> = (x_205 + -(vec3<f32>(x_208.x, x_208.y, x_208.z)));
  let x_212 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : f32 = u_xlat44;
  u_xlat44 = sqrt(x_220);
  let x_222 : f32 = u_xlat43;
  let x_224 : f32 = u_xlat44;
  u_xlat44 = (-(x_222) + x_224);
  let x_227 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_228 : f32 = u_xlat44;
  let x_230 : f32 = u_xlat43;
  u_xlat43 = ((x_227 * x_228) + x_230);
  let x_232 : f32 = u_xlat43;
  let x_235 : f32 = x_37.x_LightShadowData.z;
  let x_238 : f32 = x_37.x_LightShadowData.w;
  u_xlat43 = ((x_232 * x_235) + x_238);
  let x_240 : f32 = u_xlat43;
  u_xlat43 = clamp(x_240, 0.0f, 1.0f);
  let x_245 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb44 = (x_245 == 1.0f);
  let x_247 : bool = u_xlatb44;
  if (x_247) {
    let x_251 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb44 = (x_251 == 1.0f);
    let x_253 : vec4<f32> = vs_TEXCOORD2;
    let x_257 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_259 : vec3<f32> = (vec3<f32>(x_253.w, x_253.w, x_253.w) * vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_263 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_265 : vec4<f32> = vs_TEXCOORD1;
    let x_268 : vec4<f32> = u_xlat6;
    let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.w, x_265.w, x_265.w)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
    let x_271 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_274 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_276 : vec4<f32> = vs_TEXCOORD3;
    let x_279 : vec4<f32> = u_xlat6;
    let x_281 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.w, x_276.w, x_276.w)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
    let x_282 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat6;
    let x_288 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : bool = u_xlatb44;
    if (x_293) {
      let x_297 : vec4<f32> = u_xlat6;
      x_294 = vec3<f32>(x_297.x, x_297.y, x_297.z);
    } else {
      let x_300 : vec3<f32> = u_xlat0;
      x_294 = x_300;
    }
    let x_301 : vec3<f32> = x_294;
    let x_302 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat6;
    let x_308 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_310 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + -(x_308));
    let x_311 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat6;
    let x_317 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * x_317);
    let x_319 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_318.z);
    let x_322 : f32 = u_xlat6.y;
    u_xlat44 = ((x_322 * 0.25f) + 0.75f);
    let x_329 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat45 = ((x_329 * 0.5f) + 0.75f);
    let x_333 : f32 = u_xlat44;
    let x_334 : f32 = u_xlat45;
    u_xlat6.x = max(x_333, x_334);
    let x_345 : vec4<f32> = u_xlat6;
    let x_347 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_345.x, x_345.z, x_345.w));
    u_xlat6 = x_347;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_353 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat44 = dot(x_353, x_355);
  let x_357 : f32 = u_xlat44;
  u_xlat44 = clamp(x_357, 0.0f, 1.0f);
  let x_360 : vec4<f32> = vs_TEXCOORD7;
  let x_362 : vec4<f32> = vs_TEXCOORD7;
  let x_364 : vec2<f32> = (vec2<f32>(x_360.x, x_360.y) / vec2<f32>(x_362.w, x_362.w));
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
  let x_372 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_372.x, x_372.y));
  u_xlat45 = x_374.x;
  let x_376 : f32 = u_xlat44;
  let x_377 : f32 = u_xlat45;
  u_xlat44 = (x_376 + -(x_377));
  let x_380 : f32 = u_xlat43;
  let x_381 : f32 = u_xlat44;
  let x_383 : f32 = u_xlat45;
  u_xlat43 = ((x_380 * x_381) + x_383);
  let x_385 : vec4<f32> = vs_TEXCOORD1;
  let x_387 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), x_387);
  let x_390 : vec4<f32> = vs_TEXCOORD2;
  let x_392 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), x_392);
  let x_395 : vec4<f32> = vs_TEXCOORD3;
  let x_397 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), x_397);
  let x_400 : vec4<f32> = u_xlat6;
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_405);
  let x_407 : f32 = u_xlat44;
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_414 : f32 = x_37.x_Glossiness;
  u_xlat44 = (-(x_414) + 1.0f);
  let x_417 : vec4<f32> = u_xlat2;
  let x_420 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(-(vec3<f32>(x_417.x, x_417.y, x_417.z)), x_420);
  let x_422 : f32 = u_xlat45;
  let x_423 : f32 = u_xlat45;
  u_xlat45 = (x_422 + x_423);
  let x_425 : vec3<f32> = u_xlat5;
  let x_426 : f32 = u_xlat45;
  let x_430 : vec4<f32> = u_xlat2;
  let x_433 : vec3<f32> = ((x_425 * -(vec3<f32>(x_426, x_426, x_426))) + -(vec3<f32>(x_430.x, x_430.y, x_430.z)));
  let x_434 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = u_xlat43;
  let x_441 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_446 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb43 = (0.0f < x_446);
  let x_448 : bool = u_xlatb43;
  if (x_448) {
    let x_451 : vec4<f32> = u_xlat6;
    let x_453 : vec4<f32> = u_xlat6;
    u_xlat43 = dot(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_456 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_456);
    let x_459 : f32 = u_xlat43;
    let x_461 : vec4<f32> = u_xlat6;
    let x_463 : vec3<f32> = (vec3<f32>(x_459, x_459, x_459) * vec3<f32>(x_461.x, x_461.y, x_461.z));
    let x_464 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
    let x_467 : vec3<f32> = u_xlat0;
    let x_471 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(x_467) + vec3<f32>(x_471.x, x_471.y, x_471.z));
    let x_474 : vec3<f32> = u_xlat9;
    let x_475 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_474 / vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_479 : vec3<f32> = u_xlat0;
    let x_483 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_479) + vec3<f32>(x_483.x, x_483.y, x_483.z));
    let x_486 : vec3<f32> = u_xlat10;
    let x_487 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_486 / vec3<f32>(x_487.x, x_487.y, x_487.z));
    let x_494 : vec4<f32> = u_xlat8;
    let x_497 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_494.x, x_494.y, x_494.z, x_494.x));
    u_xlatb11 = vec3<bool>(x_497.x, x_497.y, x_497.z);
    let x_500 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_500;
    let x_502 : bool = u_xlatb11.x;
    if (x_502) {
      let x_507 : f32 = u_xlat9.x;
      x_503 = x_507;
    } else {
      let x_510 : f32 = u_xlat10.x;
      x_503 = x_510;
    }
    let x_511 : f32 = x_503;
    hlslcc_movcTemp.x = x_511;
    let x_514 : bool = u_xlatb11.y;
    if (x_514) {
      let x_519 : f32 = u_xlat9.y;
      x_515 = x_519;
    } else {
      let x_522 : f32 = u_xlat10.y;
      x_515 = x_522;
    }
    let x_523 : f32 = x_515;
    hlslcc_movcTemp.y = x_523;
    let x_526 : bool = u_xlatb11.z;
    if (x_526) {
      let x_531 : f32 = u_xlat9.z;
      x_527 = x_531;
    } else {
      let x_534 : f32 = u_xlat10.z;
      x_527 = x_534;
    }
    let x_535 : f32 = x_527;
    hlslcc_movcTemp.z = x_535;
    let x_537 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_537;
    let x_539 : f32 = u_xlat9.y;
    let x_541 : f32 = u_xlat9.x;
    u_xlat43 = min(x_539, x_541);
    let x_544 : f32 = u_xlat9.z;
    let x_545 : f32 = u_xlat43;
    u_xlat43 = min(x_544, x_545);
    let x_547 : vec3<f32> = u_xlat0;
    let x_549 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat9 = (x_547 + -(vec3<f32>(x_549.x, x_549.y, x_549.z)));
    let x_553 : vec4<f32> = u_xlat8;
    let x_555 : f32 = u_xlat43;
    let x_558 : vec3<f32> = u_xlat9;
    let x_559 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_555, x_555, x_555)) + x_558);
    let x_560 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  } else {
    let x_563 : vec4<f32> = u_xlat6;
    let x_564 : vec3<f32> = vec3<f32>(x_563.x, x_563.y, x_563.z);
    let x_565 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  }
  let x_567 : f32 = u_xlat44;
  u_xlat43 = ((-(x_567) * 0.699999988f) + 1.700000048f);
  let x_573 : f32 = u_xlat43;
  let x_574 : f32 = u_xlat44;
  u_xlat43 = (x_573 * x_574);
  let x_576 : f32 = u_xlat43;
  u_xlat43 = (x_576 * 6.0f);
  let x_587 : vec4<f32> = u_xlat8;
  let x_589 : f32 = u_xlat43;
  let x_590 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_587.x, x_587.y, x_587.z), x_589);
  u_xlat8 = x_590;
  let x_592 : f32 = u_xlat8.w;
  u_xlat45 = (x_592 + -1.0f);
  let x_596 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_597 : f32 = u_xlat45;
  u_xlat45 = ((x_596 * x_597) + 1.0f);
  let x_600 : f32 = u_xlat45;
  u_xlat45 = log2(x_600);
  let x_602 : f32 = u_xlat45;
  let x_604 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_602 * x_604);
  let x_606 : f32 = u_xlat45;
  u_xlat45 = exp2(x_606);
  let x_608 : f32 = u_xlat45;
  let x_610 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_608 * x_610);
  let x_612 : vec4<f32> = u_xlat8;
  let x_614 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614));
  let x_619 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_619 < 0.999989986f);
  let x_622 : bool = u_xlatb46;
  if (x_622) {
    let x_627 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_627);
    let x_629 : bool = u_xlatb46;
    if (x_629) {
      let x_633 : vec4<f32> = u_xlat6;
      let x_635 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
      let x_638 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_638);
      let x_640 : f32 = u_xlat46;
      let x_642 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
      let x_646 : vec3<f32> = u_xlat0;
      let x_650 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_646) + vec3<f32>(x_650.x, x_650.y, x_650.z));
      let x_653 : vec3<f32> = u_xlat11;
      let x_654 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_653 / x_654);
      let x_657 : vec3<f32> = u_xlat0;
      let x_661 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_657) + vec3<f32>(x_661.x, x_661.y, x_661.z));
      let x_664 : vec3<f32> = u_xlat12;
      let x_665 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_664 / x_665);
      let x_668 : vec3<f32> = u_xlat10;
      let x_670 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_668.x, x_668.y, x_668.z, x_668.x));
      u_xlatb13 = vec3<bool>(x_670.x, x_670.y, x_670.z);
      let x_673 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_673;
      let x_675 : bool = u_xlatb13.x;
      if (x_675) {
        let x_680 : f32 = u_xlat11.x;
        x_676 = x_680;
      } else {
        let x_683 : f32 = u_xlat12.x;
        x_676 = x_683;
      }
      let x_684 : f32 = x_676;
      hlslcc_movcTemp_1.x = x_684;
      let x_687 : bool = u_xlatb13.y;
      if (x_687) {
        let x_692 : f32 = u_xlat11.y;
        x_688 = x_692;
      } else {
        let x_695 : f32 = u_xlat12.y;
        x_688 = x_695;
      }
      let x_696 : f32 = x_688;
      hlslcc_movcTemp_1.y = x_696;
      let x_699 : bool = u_xlatb13.z;
      if (x_699) {
        let x_704 : f32 = u_xlat11.z;
        x_700 = x_704;
      } else {
        let x_707 : f32 = u_xlat12.z;
        x_700 = x_707;
      }
      let x_708 : f32 = x_700;
      hlslcc_movcTemp_1.z = x_708;
      let x_710 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_710;
      let x_712 : f32 = u_xlat11.y;
      let x_714 : f32 = u_xlat11.x;
      u_xlat46 = min(x_712, x_714);
      let x_717 : f32 = u_xlat11.z;
      let x_718 : f32 = u_xlat46;
      u_xlat46 = min(x_717, x_718);
      let x_720 : vec3<f32> = u_xlat0;
      let x_722 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_720 + -(vec3<f32>(x_722.x, x_722.y, x_722.z)));
      let x_726 : vec3<f32> = u_xlat10;
      let x_727 : f32 = u_xlat46;
      let x_730 : vec3<f32> = u_xlat0;
      let x_731 : vec3<f32> = ((x_726 * vec3<f32>(x_727, x_727, x_727)) + x_730);
      let x_732 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
    }
    let x_738 : vec4<f32> = u_xlat6;
    let x_740 : f32 = u_xlat43;
    let x_741 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_738.x, x_738.y, x_738.z), x_740);
    u_xlat6 = x_741;
    let x_743 : f32 = u_xlat6.w;
    u_xlat0.x = (x_743 + -1.0f);
    let x_748 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_750 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_748 * x_750) + 1.0f);
    let x_755 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_755);
    let x_759 : f32 = u_xlat0.x;
    let x_761 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_759 * x_761);
    let x_765 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_765);
    let x_769 : f32 = u_xlat0.x;
    let x_771 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_769 * x_771);
    let x_774 : vec4<f32> = u_xlat6;
    let x_776 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(x_776.x, x_776.x, x_776.x));
    let x_779 : f32 = u_xlat45;
    let x_781 : vec4<f32> = u_xlat8;
    let x_784 : vec3<f32> = u_xlat0;
    let x_786 : vec3<f32> = ((vec3<f32>(x_779, x_779, x_779) * vec3<f32>(x_781.x, x_781.y, x_781.z)) + -(x_784));
    let x_787 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
    let x_790 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_792 : vec4<f32> = u_xlat6;
    let x_795 : vec3<f32> = u_xlat0;
    u_xlat9 = ((vec3<f32>(x_790.w, x_790.w, x_790.w) * vec3<f32>(x_792.x, x_792.y, x_792.z)) + x_795);
  }
  let x_797 : vec4<f32> = u_xlat3;
  let x_799 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_799.x, x_799.y, x_799.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_807 : f32 = x_37.x_Metallic;
  let x_809 : f32 = x_37.x_Metallic;
  let x_811 : f32 = x_37.x_Metallic;
  let x_812 : vec3<f32> = vec3<f32>(x_807, x_809, x_811);
  let x_817 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_812.x, x_812.y, x_812.z) * x_817) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_823 : f32 = x_37.x_Metallic;
  u_xlat43 = ((-(x_823) * 0.959999979f) + 0.959999979f);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec3<f32> = u_xlat4;
  let x_831 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * x_830);
  let x_832 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec3<f32> = u_xlat1;
  let x_835 : f32 = u_xlat42;
  let x_839 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_834 * vec3<f32>(x_835, x_835, x_835)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec3<f32> = u_xlat1;
  let x_843 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_842, x_843);
  let x_845 : f32 = u_xlat42;
  u_xlat42 = max(x_845, 0.001f);
  let x_848 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_848);
  let x_850 : f32 = u_xlat42;
  let x_852 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_850, x_850, x_850) * x_852);
  let x_854 : vec3<f32> = u_xlat5;
  let x_855 : vec4<f32> = u_xlat2;
  u_xlat42 = dot(x_854, vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec3<f32> = u_xlat5;
  let x_860 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_858, vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_865 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_865, 0.0f, 1.0f);
  let x_869 : vec3<f32> = u_xlat5;
  let x_870 : vec3<f32> = u_xlat1;
  u_xlat16 = dot(x_869, x_870);
  let x_872 : f32 = u_xlat16;
  u_xlat16 = clamp(x_872, 0.0f, 1.0f);
  let x_875 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_877 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_875.x, x_875.y, x_875.z), x_877);
  let x_881 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_881, 0.0f, 1.0f);
  let x_886 : f32 = u_xlat1.x;
  let x_888 : f32 = u_xlat1.x;
  u_xlat15 = (x_886 * x_888);
  let x_890 : f32 = u_xlat15;
  let x_892 : f32 = u_xlat44;
  u_xlat15 = dot(vec2<f32>(x_890, x_890), vec2<f32>(x_892, x_892));
  let x_895 : f32 = u_xlat15;
  u_xlat15 = (x_895 + -0.5f);
  let x_900 : f32 = u_xlat2.x;
  u_xlat29 = (-(x_900) + 1.0f);
  let x_904 : f32 = u_xlat29;
  let x_905 : f32 = u_xlat29;
  u_xlat30 = (x_904 * x_905);
  let x_907 : f32 = u_xlat30;
  let x_908 : f32 = u_xlat30;
  u_xlat30 = (x_907 * x_908);
  let x_910 : f32 = u_xlat29;
  let x_911 : f32 = u_xlat30;
  u_xlat29 = (x_910 * x_911);
  let x_913 : f32 = u_xlat15;
  let x_914 : f32 = u_xlat29;
  u_xlat29 = ((x_913 * x_914) + 1.0f);
  let x_917 : f32 = u_xlat42;
  u_xlat30 = (-(abs(x_917)) + 1.0f);
  let x_921 : f32 = u_xlat30;
  let x_922 : f32 = u_xlat30;
  u_xlat45 = (x_921 * x_922);
  let x_924 : f32 = u_xlat45;
  let x_925 : f32 = u_xlat45;
  u_xlat45 = (x_924 * x_925);
  let x_927 : f32 = u_xlat30;
  let x_928 : f32 = u_xlat45;
  u_xlat30 = (x_927 * x_928);
  let x_930 : f32 = u_xlat15;
  let x_931 : f32 = u_xlat30;
  u_xlat15 = ((x_930 * x_931) + 1.0f);
  let x_934 : f32 = u_xlat15;
  let x_935 : f32 = u_xlat29;
  u_xlat15 = (x_934 * x_935);
  let x_938 : f32 = u_xlat2.x;
  let x_939 : f32 = u_xlat15;
  u_xlat15 = (x_938 * x_939);
  let x_941 : f32 = u_xlat44;
  let x_942 : f32 = u_xlat44;
  u_xlat29 = (x_941 * x_942);
  let x_944 : f32 = u_xlat29;
  u_xlat29 = max(x_944, 0.002f);
  let x_947 : f32 = u_xlat29;
  u_xlat44 = (-(x_947) + 1.0f);
  let x_950 : f32 = u_xlat42;
  let x_952 : f32 = u_xlat44;
  let x_954 : f32 = u_xlat29;
  u_xlat45 = ((abs(x_950) * x_952) + x_954);
  let x_957 : f32 = u_xlat2.x;
  let x_958 : f32 = u_xlat44;
  let x_960 : f32 = u_xlat29;
  u_xlat44 = ((x_957 * x_958) + x_960);
  let x_962 : f32 = u_xlat42;
  let x_964 : f32 = u_xlat44;
  u_xlat42 = (abs(x_962) * x_964);
  let x_967 : f32 = u_xlat2.x;
  let x_968 : f32 = u_xlat45;
  let x_970 : f32 = u_xlat42;
  u_xlat42 = ((x_967 * x_968) + x_970);
  let x_972 : f32 = u_xlat42;
  u_xlat42 = (x_972 + 0.00001f);
  let x_975 : f32 = u_xlat42;
  u_xlat42 = (0.5f / x_975);
  let x_977 : f32 = u_xlat29;
  let x_978 : f32 = u_xlat29;
  u_xlat44 = (x_977 * x_978);
  let x_980 : f32 = u_xlat16;
  let x_981 : f32 = u_xlat44;
  let x_983 : f32 = u_xlat16;
  u_xlat45 = ((x_980 * x_981) + -(x_983));
  let x_986 : f32 = u_xlat45;
  let x_987 : f32 = u_xlat16;
  u_xlat16 = ((x_986 * x_987) + 1.0f);
  let x_990 : f32 = u_xlat44;
  u_xlat44 = (x_990 * 0.318309873f);
  let x_993 : f32 = u_xlat16;
  let x_994 : f32 = u_xlat16;
  u_xlat16 = ((x_993 * x_994) + 0.0000001f);
  let x_998 : f32 = u_xlat44;
  let x_999 : f32 = u_xlat16;
  u_xlat16 = (x_998 / x_999);
  let x_1001 : f32 = u_xlat42;
  let x_1002 : f32 = u_xlat16;
  u_xlat42 = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat2.x;
  let x_1006 : f32 = u_xlat42;
  u_xlat42 = (x_1005 * x_1006);
  let x_1008 : f32 = u_xlat42;
  u_xlat42 = (x_1008 * 3.141592741f);
  let x_1011 : f32 = u_xlat42;
  u_xlat42 = max(x_1011, 0.0f);
  let x_1013 : f32 = u_xlat29;
  let x_1014 : f32 = u_xlat29;
  u_xlat29 = ((x_1013 * x_1014) + 1.0f);
  let x_1017 : f32 = u_xlat29;
  u_xlat29 = (1.0f / x_1017);
  let x_1019 : vec3<f32> = u_xlat0;
  let x_1020 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1019, x_1020);
  let x_1025 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1025 == 0.0f));
  let x_1027 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1027);
  let x_1030 : f32 = u_xlat42;
  let x_1032 : f32 = u_xlat2.x;
  u_xlat42 = (x_1030 * x_1032);
  let x_1034 : f32 = u_xlat43;
  let x_1037 : f32 = x_37.x_Glossiness;
  u_xlat43 = (-(x_1034) + x_1037);
  let x_1039 : f32 = u_xlat43;
  u_xlat43 = (x_1039 + 1.0f);
  let x_1041 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1041, 0.0f, 1.0f);
  let x_1043 : f32 = u_xlat15;
  let x_1045 : vec3<f32> = u_xlat7;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1043, x_1043, x_1043) * x_1045);
  let x_1047 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1046.z);
  let x_1049 : vec3<f32> = u_xlat7;
  let x_1050 : f32 = u_xlat42;
  u_xlat4 = (x_1049 * vec3<f32>(x_1050, x_1050, x_1050));
  let x_1054 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_1054) + 1.0f);
  let x_1057 : f32 = u_xlat42;
  let x_1058 : f32 = u_xlat42;
  u_xlat1.x = (x_1057 * x_1058);
  let x_1062 : f32 = u_xlat1.x;
  let x_1064 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat42;
  let x_1069 : f32 = u_xlat1.x;
  u_xlat42 = (x_1067 * x_1069);
  let x_1071 : vec3<f32> = u_xlat0;
  u_xlat5 = (-(x_1071) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1075 : vec3<f32> = u_xlat5;
  let x_1076 : f32 = u_xlat42;
  let x_1079 : vec3<f32> = u_xlat0;
  u_xlat5 = ((x_1075 * vec3<f32>(x_1076, x_1076, x_1076)) + x_1079);
  let x_1081 : vec3<f32> = u_xlat4;
  let x_1082 : vec3<f32> = u_xlat5;
  u_xlat4 = (x_1081 * x_1082);
  let x_1084 : vec4<f32> = u_xlat3;
  let x_1086 : vec4<f32> = u_xlat2;
  let x_1089 : vec3<f32> = u_xlat4;
  let x_1090 : vec3<f32> = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1086.x, x_1086.y, x_1086.w)) + x_1089);
  let x_1091 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1090.z);
  let x_1093 : vec3<f32> = u_xlat9;
  let x_1094 : f32 = u_xlat29;
  u_xlat1 = (x_1093 * vec3<f32>(x_1094, x_1094, x_1094));
  let x_1097 : vec3<f32> = u_xlat0;
  let x_1099 : f32 = u_xlat43;
  let x_1101 : vec3<f32> = (-(x_1097) + vec3<f32>(x_1099, x_1099, x_1099));
  let x_1102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : f32 = u_xlat30;
  let x_1106 : vec4<f32> = u_xlat3;
  let x_1109 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1104, x_1104, x_1104) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + x_1109);
  let x_1111 : vec3<f32> = u_xlat1;
  let x_1112 : vec3<f32> = u_xlat0;
  let x_1114 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1111 * x_1112) + vec3<f32>(x_1114.x, x_1114.y, x_1114.w));
  let x_1119 : vec3<f32> = u_xlat0;
  let x_1122 : vec4<f32> = x_37.x_AmbientColor;
  let x_1124 : vec3<f32> = (x_1119 + vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

