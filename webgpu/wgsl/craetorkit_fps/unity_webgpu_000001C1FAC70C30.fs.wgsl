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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(8) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_222 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_113 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_113;
  let x_117 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_117;
  let x_122 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_122;
  let x_124 : vec3<f32> = u_xlat0;
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(x_124, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec3<f32> = vs_TEXCOORD4;
  let x_132 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_135 : vec3<f32> = (x_128 + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = u_xlat5;
  let x_141 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_144);
  let x_146 : f32 = u_xlat22;
  let x_148 : f32 = u_xlat23;
  u_xlat23 = (-(x_146) + x_148);
  let x_152 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_153 : f32 = u_xlat23;
  let x_155 : f32 = u_xlat22;
  u_xlat22 = ((x_152 * x_153) + x_155);
  let x_157 : f32 = u_xlat22;
  let x_160 : f32 = x_18.x_LightShadowData.z;
  let x_163 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_157 * x_160) + x_163);
  let x_165 : f32 = u_xlat22;
  u_xlat22 = clamp(x_165, 0.0f, 1.0f);
  let x_173 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_173 == 1.0f);
  let x_175 : bool = u_xlatb23;
  if (x_175) {
    let x_179 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_179 == 1.0f);
    let x_181 : vec3<f32> = vs_TEXCOORD4;
    let x_185 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_187 : vec3<f32> = (vec3<f32>(x_181.y, x_181.y, x_181.y) * vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_191 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_193 : vec3<f32> = vs_TEXCOORD4;
    let x_196 : vec4<f32> = u_xlat5;
    let x_198 : vec3<f32> = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
    let x_199 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_202 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_204 : vec3<f32> = vs_TEXCOORD4;
    let x_207 : vec4<f32> = u_xlat5;
    let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.z, x_204.z, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat5;
    let x_216 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_218 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : bool = u_xlatb23;
    if (x_221) {
      let x_225 : vec4<f32> = u_xlat5;
      x_222 = vec3<f32>(x_225.x, x_225.y, x_225.z);
    } else {
      let x_228 : vec3<f32> = vs_TEXCOORD4;
      x_222 = x_228;
    }
    let x_229 : vec3<f32> = x_222;
    let x_230 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat5;
    let x_236 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_238 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + -(x_236));
    let x_239 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_241 : vec4<f32> = u_xlat5;
    let x_245 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_246 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) * x_245);
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_247.x, x_246.x, x_246.y, x_246.z);
    let x_250 : f32 = u_xlat5.y;
    u_xlat23 = ((x_250 * 0.25f) + 0.75f);
    let x_258 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat17.x = ((x_258 * 0.5f) + 0.75f);
    let x_263 : f32 = u_xlat23;
    let x_265 : f32 = u_xlat17.x;
    u_xlat5.x = max(x_263, x_265);
    let x_276 : vec4<f32> = u_xlat5;
    let x_278 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_276.x, x_276.z, x_276.w));
    u_xlat5 = x_278;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_284 : vec4<f32> = u_xlat5;
  let x_286 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_284, x_286);
  let x_288 : f32 = u_xlat23;
  u_xlat23 = clamp(x_288, 0.0f, 1.0f);
  let x_292 : vec4<f32> = vs_TEXCOORD6;
  let x_294 : vec4<f32> = vs_TEXCOORD6;
  u_xlat17 = (vec2<f32>(x_292.x, x_292.y) / vec2<f32>(x_294.w, x_294.w));
  let x_302 : vec2<f32> = u_xlat17;
  let x_303 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_302);
  u_xlat17.x = x_303.x;
  let x_306 : f32 = u_xlat23;
  let x_308 : f32 = u_xlat17.x;
  u_xlat23 = (x_306 + -(x_308));
  let x_311 : f32 = u_xlat22;
  let x_312 : f32 = u_xlat23;
  let x_315 : f32 = u_xlat17.x;
  u_xlat22 = ((x_311 * x_312) + x_315);
  let x_318 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_318, x_319);
  let x_323 : vec3<f32> = vs_TEXCOORD2;
  let x_324 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_323, x_324);
  let x_328 : vec3<f32> = vs_TEXCOORD3;
  let x_329 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_328, x_329);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat23;
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : f32 = u_xlat22;
  let x_348 : vec4<f32> = x_18.x_LightColor0;
  let x_350 : vec3<f32> = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_354 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_358 : vec3<f32> = u_xlat3;
  let x_360 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_358.x, x_358.x, x_358.x) * x_360) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_366 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_366) * 0.959999979f) + 0.959999979f);
  let x_371 : f32 = u_xlat22;
  let x_373 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_371, x_371, x_371) * x_373);
  let x_376 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_376) + 1.0f);
  let x_379 : vec3<f32> = u_xlat0;
  let x_380 : f32 = u_xlat21;
  let x_384 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_379 * vec3<f32>(x_380, x_380, x_380)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec3<f32> = u_xlat0;
  let x_388 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_387, x_388);
  let x_390 : f32 = u_xlat21;
  u_xlat21 = max(x_390, 0.001f);
  let x_393 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_393);
  let x_395 : f32 = u_xlat21;
  let x_397 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_395, x_395, x_395) * x_397);
  let x_399 : vec3<f32> = u_xlat4;
  let x_400 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_399, x_400);
  let x_402 : vec3<f32> = u_xlat4;
  let x_404 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_402, vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_409 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_409, 0.0f, 1.0f);
  let x_413 : vec3<f32> = u_xlat4;
  let x_414 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_413, x_414);
  let x_416 : f32 = u_xlat8;
  u_xlat8 = clamp(x_416, 0.0f, 1.0f);
  let x_419 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), x_421);
  let x_425 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_425, 0.0f, 1.0f);
  let x_430 : f32 = u_xlat0.x;
  let x_432 : f32 = u_xlat0.x;
  u_xlat7.x = (x_430 * x_432);
  let x_435 : vec3<f32> = u_xlat7;
  let x_437 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_435.x, x_435.x), vec2<f32>(x_437, x_437));
  let x_442 : f32 = u_xlat7.x;
  u_xlat7.x = (x_442 + -0.5f);
  let x_448 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_448) + 1.0f);
  let x_452 : f32 = u_xlat14;
  let x_453 : f32 = u_xlat14;
  u_xlat15 = (x_452 * x_453);
  let x_455 : f32 = u_xlat15;
  let x_456 : f32 = u_xlat15;
  u_xlat15 = (x_455 * x_456);
  let x_458 : f32 = u_xlat14;
  let x_459 : f32 = u_xlat15;
  u_xlat14 = (x_458 * x_459);
  let x_462 : f32 = u_xlat7.x;
  let x_463 : f32 = u_xlat14;
  u_xlat14 = ((x_462 * x_463) + 1.0f);
  let x_466 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_466)) + 1.0f);
  let x_470 : f32 = u_xlat15;
  let x_471 : f32 = u_xlat15;
  u_xlat23 = (x_470 * x_471);
  let x_473 : f32 = u_xlat23;
  let x_474 : f32 = u_xlat23;
  u_xlat23 = (x_473 * x_474);
  let x_476 : f32 = u_xlat15;
  let x_477 : f32 = u_xlat23;
  u_xlat15 = (x_476 * x_477);
  let x_480 : f32 = u_xlat7.x;
  let x_481 : f32 = u_xlat15;
  u_xlat7.x = ((x_480 * x_481) + 1.0f);
  let x_486 : f32 = u_xlat7.x;
  let x_487 : f32 = u_xlat14;
  u_xlat7.x = (x_486 * x_487);
  let x_490 : f32 = u_xlat22;
  let x_491 : f32 = u_xlat22;
  u_xlat14 = (x_490 * x_491);
  let x_493 : f32 = u_xlat14;
  u_xlat14 = max(x_493, 0.002f);
  let x_496 : f32 = u_xlat14;
  u_xlat15 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat21;
  let x_501 : f32 = u_xlat15;
  let x_503 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_499) * x_501) + x_503);
  let x_506 : f32 = u_xlat1.x;
  let x_507 : f32 = u_xlat15;
  let x_509 : f32 = u_xlat14;
  u_xlat15 = ((x_506 * x_507) + x_509);
  let x_511 : f32 = u_xlat21;
  let x_513 : f32 = u_xlat15;
  u_xlat21 = (abs(x_511) * x_513);
  let x_516 : f32 = u_xlat1.x;
  let x_517 : f32 = u_xlat22;
  let x_519 : f32 = u_xlat21;
  u_xlat21 = ((x_516 * x_517) + x_519);
  let x_521 : f32 = u_xlat21;
  u_xlat21 = (x_521 + 0.00001f);
  let x_524 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_524);
  let x_526 : f32 = u_xlat14;
  let x_527 : f32 = u_xlat14;
  u_xlat14 = (x_526 * x_527);
  let x_529 : f32 = u_xlat8;
  let x_530 : f32 = u_xlat14;
  let x_532 : f32 = u_xlat8;
  u_xlat15 = ((x_529 * x_530) + -(x_532));
  let x_535 : f32 = u_xlat15;
  let x_536 : f32 = u_xlat8;
  u_xlat8 = ((x_535 * x_536) + 1.0f);
  let x_539 : f32 = u_xlat14;
  u_xlat14 = (x_539 * 0.318309873f);
  let x_542 : f32 = u_xlat8;
  let x_543 : f32 = u_xlat8;
  u_xlat8 = ((x_542 * x_543) + 0.0000001f);
  let x_547 : f32 = u_xlat14;
  let x_548 : f32 = u_xlat8;
  u_xlat14 = (x_547 / x_548);
  let x_550 : f32 = u_xlat14;
  let x_551 : f32 = u_xlat21;
  u_xlat7.y = (x_550 * x_551);
  let x_554 : vec3<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat7;
  let x_558 : vec2<f32> = (vec2<f32>(x_554.x, x_554.x) * vec2<f32>(x_556.x, x_556.y));
  let x_559 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_558.x, x_558.y, x_559.z);
  let x_562 : f32 = u_xlat7.y;
  u_xlat14 = (x_562 * 3.141592741f);
  let x_565 : f32 = u_xlat14;
  u_xlat14 = max(x_565, 0.0f);
  let x_567 : vec3<f32> = u_xlat6;
  let x_568 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_567, x_568);
  let x_571 : f32 = u_xlat21;
  u_xlatb21 = !((x_571 == 0.0f));
  let x_573 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_573);
  let x_575 : f32 = u_xlat21;
  let x_576 : f32 = u_xlat14;
  u_xlat14 = (x_575 * x_576);
  let x_578 : vec3<f32> = u_xlat7;
  let x_580 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_578.x, x_578.x, x_578.x) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat5;
  let x_585 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(x_585, x_585, x_585));
  let x_589 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_589) + 1.0f);
  let x_594 : f32 = u_xlat0.x;
  let x_596 : f32 = u_xlat0.x;
  u_xlat22 = (x_594 * x_596);
  let x_598 : f32 = u_xlat22;
  let x_599 : f32 = u_xlat22;
  u_xlat22 = (x_598 * x_599);
  let x_602 : f32 = u_xlat0.x;
  let x_603 : f32 = u_xlat22;
  u_xlat0.x = (x_602 * x_603);
  let x_606 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_606) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_610 : vec3<f32> = u_xlat3;
  let x_611 : vec3<f32> = u_xlat0;
  let x_614 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_610 * vec3<f32>(x_611.x, x_611.x, x_611.x)) + x_614);
  let x_616 : vec3<f32> = u_xlat7;
  let x_617 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_616 * x_617);
  let x_619 : vec3<f32> = u_xlat2;
  let x_620 : vec3<f32> = u_xlat1;
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_619 * x_620) + x_622);
  let x_626 : f32 = vs_TEXCOORD7;
  let x_628 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_626 / x_628);
  let x_630 : f32 = u_xlat21;
  u_xlat21 = (-(x_630) + 1.0f);
  let x_633 : f32 = u_xlat21;
  let x_635 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_633 * x_635);
  let x_637 : f32 = u_xlat21;
  u_xlat21 = max(x_637, 0.0f);
  let x_639 : f32 = u_xlat21;
  let x_642 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_639 * x_642);
  let x_644 : f32 = u_xlat21;
  let x_645 : f32 = u_xlat21;
  u_xlat21 = (x_644 * -(x_645));
  let x_648 : f32 = u_xlat21;
  u_xlat21 = exp2(x_648);
  let x_652 : vec3<f32> = u_xlat0;
  let x_653 : f32 = u_xlat21;
  let x_655 : vec3<f32> = (x_652 * vec3<f32>(x_653, x_653, x_653));
  let x_656 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

