struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
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
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(5) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb19 : bool;
  var u_xlatb2 : bool;
  var u_xlat8 : vec3<f32>;
  var x_212 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat20 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_40 : f32 = vs_TEXCOORD3;
  u_xlat19 = (x_40 + -1.0f);
  let x_43 : f32 = u_xlat19;
  u_xlat19 = (x_43 * -9.999998093f);
  let x_46 : f32 = u_xlat19;
  u_xlat19 = clamp(x_46, 0.0f, 1.0f);
  let x_52 : f32 = u_xlat19;
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : vec2<f32> = (-(vec2<f32>(x_52, x_52)) + x_58);
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_59.x, x_59.y, x_60.z, x_60.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_72.x, x_72.y));
  u_xlat19 = x_74.x;
  let x_81 : vec2<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_81);
  u_xlat2.x = x_82.z;
  let x_86 : f32 = u_xlat19;
  u_xlat19 = ((x_86 * -2.0f) + 1.0f);
  let x_91 : f32 = u_xlat2.x;
  let x_93 : f32 = u_xlat19;
  u_xlat19 = (-(x_91) + x_93);
  let x_98 : f32 = u_xlat19;
  u_xlatb19 = (x_98 < 0.0f);
  let x_100 : bool = u_xlatb19;
  if (((select(0i, 1i, x_100) * -1i) != 0i)) {
    discard;
  }
  let x_112 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat2.x = x_112;
  let x_115 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat2.y = x_115;
  let x_120 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat2.z = x_120;
  let x_122 : vec3<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(x_122, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_133 : vec3<f32> = (x_126 + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_143 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_143);
  let x_146 : f32 = u_xlat19;
  let x_149 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_146) + x_149);
  let x_154 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_156 : f32 = u_xlat2.x;
  let x_158 : f32 = u_xlat19;
  u_xlat19 = ((x_154 * x_156) + x_158);
  let x_160 : f32 = u_xlat19;
  let x_163 : f32 = x_18.x_LightShadowData.z;
  let x_166 : f32 = x_18.x_LightShadowData.w;
  u_xlat19 = ((x_160 * x_163) + x_166);
  let x_168 : f32 = u_xlat19;
  u_xlat19 = clamp(x_168, 0.0f, 1.0f);
  let x_173 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_173 == 1.0f);
  let x_175 : bool = u_xlatb2;
  if (x_175) {
    let x_179 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_179 == 1.0f);
    let x_182 : vec3<f32> = vs_TEXCOORD2;
    let x_186 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat8 = (vec3<f32>(x_182.y, x_182.y, x_182.y) * vec3<f32>(x_186.x, x_186.y, x_186.z));
    let x_190 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_192 : vec3<f32> = vs_TEXCOORD2;
    let x_195 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_192.x, x_192.x, x_192.x)) + x_195);
    let x_198 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_200 : vec3<f32> = vs_TEXCOORD2;
    let x_203 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.z, x_200.z, x_200.z)) + x_203);
    let x_205 : vec3<f32> = u_xlat8;
    let x_208 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat8 = (x_205 + vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_211 : bool = u_xlatb2;
    if (x_211) {
      let x_215 : vec3<f32> = u_xlat8;
      x_212 = x_215;
    } else {
      let x_217 : vec3<f32> = vs_TEXCOORD2;
      x_212 = x_217;
    }
    let x_218 : vec3<f32> = x_212;
    let x_219 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat2;
    let x_225 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_227 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + -(x_225));
    let x_228 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_230 : vec4<f32> = u_xlat2;
    let x_234 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_235 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) * x_234);
    let x_236 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_236.x, x_235.x, x_235.y, x_235.z);
    let x_239 : f32 = u_xlat2.y;
    u_xlat8.x = ((x_239 * 0.25f) + 0.75f);
    let x_247 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((x_247 * 0.5f) + 0.75f);
    let x_253 : f32 = u_xlat8.x;
    let x_255 : f32 = u_xlat3.x;
    u_xlat2.x = max(x_253, x_255);
    let x_266 : vec4<f32> = u_xlat2;
    let x_268 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_266.x, x_266.z, x_266.w));
    u_xlat2 = x_268;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_274 : vec4<f32> = u_xlat2;
  let x_276 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_274, x_276);
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_280, 0.0f, 1.0f);
  let x_285 : vec4<f32> = vs_TEXCOORD5;
  let x_287 : vec4<f32> = vs_TEXCOORD5;
  let x_289 : vec2<f32> = (vec2<f32>(x_285.x, x_285.y) / vec2<f32>(x_287.w, x_287.w));
  let x_290 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_289.x, x_289.y, x_290.z);
  let x_297 : vec3<f32> = u_xlat8;
  let x_299 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_297.x, x_297.y));
  u_xlat8.x = x_299.x;
  let x_303 : f32 = u_xlat8.x;
  let x_306 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_303) + x_306);
  let x_309 : f32 = u_xlat19;
  let x_311 : f32 = u_xlat2.x;
  let x_314 : f32 = u_xlat8.x;
  u_xlat19 = ((x_309 * x_311) + x_314);
  let x_316 : f32 = u_xlat19;
  let x_320 : vec4<f32> = x_18.x_LightColor0;
  let x_322 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_326, x_327);
  let x_329 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_329);
  let x_331 : f32 = u_xlat19;
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_338 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_345 : f32 = x_18.x_Metallic;
  let x_347 : f32 = x_18.x_Metallic;
  let x_349 : f32 = x_18.x_Metallic;
  let x_350 : vec3<f32> = vec3<f32>(x_345, x_347, x_349);
  let x_355 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * x_355) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_361 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_361) * 0.959999979f) + 0.959999979f);
  let x_367 : f32 = u_xlat19;
  let x_370 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_367, x_367, x_367) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_375 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_375) + 1.0f);
  let x_378 : vec3<f32> = u_xlat0;
  let x_379 : f32 = u_xlat18;
  let x_383 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_378 * vec3<f32>(x_379, x_379, x_379)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec3<f32> = u_xlat0;
  let x_387 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_386, x_387);
  let x_389 : f32 = u_xlat18;
  u_xlat18 = max(x_389, 0.001f);
  let x_392 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_392);
  let x_394 : f32 = u_xlat18;
  let x_396 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_394, x_394, x_394) * x_396);
  let x_398 : vec3<f32> = u_xlat3;
  let x_399 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_398, x_399);
  let x_401 : vec3<f32> = u_xlat3;
  let x_403 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_401, vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_408 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_408, 0.0f, 1.0f);
  let x_412 : vec3<f32> = u_xlat3;
  let x_413 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_412, x_413);
  let x_415 : f32 = u_xlat7;
  u_xlat7 = clamp(x_415, 0.0f, 1.0f);
  let x_418 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_420 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), x_420);
  let x_424 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_424, 0.0f, 1.0f);
  let x_429 : f32 = u_xlat0.x;
  let x_431 : f32 = u_xlat0.x;
  u_xlat6.x = (x_429 * x_431);
  let x_434 : vec3<f32> = u_xlat6;
  let x_436 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_434.x, x_434.x), vec2<f32>(x_436, x_436));
  let x_441 : f32 = u_xlat6.x;
  u_xlat6.x = (x_441 + -0.5f);
  let x_447 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_447) + 1.0f);
  let x_451 : f32 = u_xlat12;
  let x_452 : f32 = u_xlat12;
  u_xlat13 = (x_451 * x_452);
  let x_454 : f32 = u_xlat13;
  let x_455 : f32 = u_xlat13;
  u_xlat13 = (x_454 * x_455);
  let x_457 : f32 = u_xlat12;
  let x_458 : f32 = u_xlat13;
  u_xlat12 = (x_457 * x_458);
  let x_461 : f32 = u_xlat6.x;
  let x_462 : f32 = u_xlat12;
  u_xlat12 = ((x_461 * x_462) + 1.0f);
  let x_465 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_465)) + 1.0f);
  let x_470 : f32 = u_xlat13;
  let x_471 : f32 = u_xlat13;
  u_xlat20 = (x_470 * x_471);
  let x_473 : f32 = u_xlat20;
  let x_474 : f32 = u_xlat20;
  u_xlat20 = (x_473 * x_474);
  let x_476 : f32 = u_xlat13;
  let x_477 : f32 = u_xlat20;
  u_xlat13 = (x_476 * x_477);
  let x_480 : f32 = u_xlat6.x;
  let x_481 : f32 = u_xlat13;
  u_xlat6.x = ((x_480 * x_481) + 1.0f);
  let x_486 : f32 = u_xlat6.x;
  let x_487 : f32 = u_xlat12;
  u_xlat6.x = (x_486 * x_487);
  let x_490 : f32 = u_xlat19;
  let x_491 : f32 = u_xlat19;
  u_xlat12 = (x_490 * x_491);
  let x_493 : f32 = u_xlat12;
  u_xlat12 = max(x_493, 0.002f);
  let x_496 : f32 = u_xlat12;
  u_xlat13 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat18;
  let x_501 : f32 = u_xlat13;
  let x_503 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_499) * x_501) + x_503);
  let x_506 : f32 = u_xlat1.x;
  let x_507 : f32 = u_xlat13;
  let x_509 : f32 = u_xlat12;
  u_xlat13 = ((x_506 * x_507) + x_509);
  let x_511 : f32 = u_xlat18;
  let x_513 : f32 = u_xlat13;
  u_xlat18 = (abs(x_511) * x_513);
  let x_516 : f32 = u_xlat1.x;
  let x_517 : f32 = u_xlat19;
  let x_519 : f32 = u_xlat18;
  u_xlat18 = ((x_516 * x_517) + x_519);
  let x_521 : f32 = u_xlat18;
  u_xlat18 = (x_521 + 0.00001f);
  let x_524 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_524);
  let x_526 : f32 = u_xlat12;
  let x_527 : f32 = u_xlat12;
  u_xlat12 = (x_526 * x_527);
  let x_529 : f32 = u_xlat7;
  let x_530 : f32 = u_xlat12;
  let x_532 : f32 = u_xlat7;
  u_xlat13 = ((x_529 * x_530) + -(x_532));
  let x_535 : f32 = u_xlat13;
  let x_536 : f32 = u_xlat7;
  u_xlat7 = ((x_535 * x_536) + 1.0f);
  let x_539 : f32 = u_xlat12;
  u_xlat12 = (x_539 * 0.318309873f);
  let x_542 : f32 = u_xlat7;
  let x_543 : f32 = u_xlat7;
  u_xlat7 = ((x_542 * x_543) + 0.0000001f);
  let x_547 : f32 = u_xlat12;
  let x_548 : f32 = u_xlat7;
  u_xlat12 = (x_547 / x_548);
  let x_550 : f32 = u_xlat12;
  let x_551 : f32 = u_xlat18;
  u_xlat6.y = (x_550 * x_551);
  let x_554 : vec3<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat6;
  let x_558 : vec2<f32> = (vec2<f32>(x_554.x, x_554.x) * vec2<f32>(x_556.x, x_556.y));
  let x_559 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_558.x, x_558.y, x_559.z);
  let x_562 : f32 = u_xlat6.y;
  u_xlat12 = (x_562 * 3.141592741f);
  let x_565 : f32 = u_xlat12;
  u_xlat12 = max(x_565, 0.0f);
  let x_567 : vec3<f32> = u_xlat4;
  let x_568 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_567, x_568);
  let x_571 : f32 = u_xlat18;
  u_xlatb18 = !((x_571 == 0.0f));
  let x_573 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_573);
  let x_575 : f32 = u_xlat18;
  let x_576 : f32 = u_xlat12;
  u_xlat12 = (x_575 * x_576);
  let x_578 : vec3<f32> = u_xlat6;
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_578.x, x_578.x, x_578.x) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(x_585, x_585, x_585));
  let x_589 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_589) + 1.0f);
  let x_594 : f32 = u_xlat0.x;
  let x_596 : f32 = u_xlat0.x;
  u_xlat19 = (x_594 * x_596);
  let x_598 : f32 = u_xlat19;
  let x_599 : f32 = u_xlat19;
  u_xlat19 = (x_598 * x_599);
  let x_602 : f32 = u_xlat0.x;
  let x_603 : f32 = u_xlat19;
  u_xlat0.x = (x_602 * x_603);
  let x_606 : vec3<f32> = u_xlat4;
  let x_609 : vec3<f32> = (-(x_606) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_610 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat2;
  let x_614 : vec3<f32> = u_xlat0;
  let x_617 : vec3<f32> = u_xlat4;
  let x_618 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614.x, x_614.x, x_614.x)) + x_617);
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = u_xlat6;
  let x_622 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_621 * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec3<f32> = u_xlat5;
  let x_626 : vec3<f32> = u_xlat1;
  let x_628 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_625 * x_626) + x_628);
  let x_631 : f32 = vs_TEXCOORD6;
  let x_633 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_631 / x_633);
  let x_635 : f32 = u_xlat18;
  u_xlat18 = (-(x_635) + 1.0f);
  let x_638 : f32 = u_xlat18;
  let x_640 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_638 * x_640);
  let x_642 : f32 = u_xlat18;
  u_xlat18 = max(x_642, 0.0f);
  let x_644 : f32 = u_xlat18;
  let x_647 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_644 * x_647);
  let x_649 : f32 = u_xlat18;
  let x_650 : f32 = u_xlat18;
  u_xlat18 = (x_649 * -(x_650));
  let x_653 : f32 = u_xlat18;
  u_xlat18 = exp2(x_653);
  let x_657 : vec3<f32> = u_xlat0;
  let x_658 : f32 = u_xlat18;
  let x_660 : vec3<f32> = (x_657 * vec3<f32>(x_658, x_658, x_658));
  let x_661 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

