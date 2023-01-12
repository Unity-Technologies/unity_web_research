type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(9) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3<f32>;
  var x_261 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat21;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD2;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat22;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_68 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_68 + -1.0f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = (x_71 * -9.999998093f);
  let x_74 : f32 = u_xlat22;
  u_xlat22 = clamp(x_74, 0.0f, 1.0f);
  let x_79 : f32 = u_xlat22;
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : vec2<f32> = (-(vec2<f32>(x_79, x_79)) + x_85);
  let x_87 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_86.x, x_86.y, x_87.z, x_87.w);
  let x_99 : vec4<f32> = u_xlat4;
  let x_101 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_99.x, x_99.y));
  u_xlat22 = x_101.x;
  let x_108 : vec2<f32> = vs_TEXCOORD0;
  let x_109 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_108);
  u_xlat23 = x_109.z;
  let x_112 : f32 = u_xlat22;
  u_xlat22 = ((x_112 * -2.0f) + 1.0f);
  let x_116 : f32 = u_xlat23;
  let x_118 : f32 = u_xlat22;
  u_xlat22 = (-(x_116) + x_118);
  let x_123 : f32 = u_xlat22;
  u_xlatb22 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb22;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_133.y, x_133.y, x_133.y, x_133.y) * x_137);
  let x_140 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x)) + x_144);
  let x_148 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_149 : vec3<f32> = vs_TEXCOORD2;
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_148 * vec4<f32>(x_149.z, x_149.z, x_149.z, x_149.z)) + x_152);
  let x_154 : vec4<f32> = u_xlat4;
  let x_157 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat4 = (x_154 + x_157);
  let x_163 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat5.x = x_163;
  let x_166 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat5.y = x_166;
  let x_170 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat5.z = x_170;
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec3<f32> = vs_TEXCOORD2;
  let x_180 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_193 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_193);
  let x_196 : f32 = u_xlat22;
  let x_199 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_196) + x_199);
  let x_204 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_206 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat22;
  u_xlat22 = ((x_204 * x_206) + x_208);
  let x_210 : f32 = u_xlat22;
  let x_213 : f32 = x_21.x_LightShadowData.z;
  let x_216 : f32 = x_21.x_LightShadowData.w;
  u_xlat22 = ((x_210 * x_213) + x_216);
  let x_218 : f32 = u_xlat22;
  u_xlat22 = clamp(x_218, 0.0f, 1.0f);
  let x_223 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_223 == 1.0f);
  let x_225 : bool = u_xlatb2;
  if (x_225) {
    let x_229 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_229 == 1.0f);
    let x_232 : vec3<f32> = vs_TEXCOORD2;
    let x_236 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_236.x, x_236.y, x_236.z));
    let x_240 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_242 : vec3<f32> = vs_TEXCOORD2;
    let x_245 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.x, x_242.x, x_242.x)) + x_245);
    let x_248 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_250 : vec3<f32> = vs_TEXCOORD2;
    let x_253 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
    let x_255 : vec3<f32> = u_xlat9;
    let x_257 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_255 + vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : bool = u_xlatb2;
    if (x_260) {
      let x_264 : vec3<f32> = u_xlat9;
      x_261 = x_264;
    } else {
      let x_266 : vec3<f32> = vs_TEXCOORD2;
      x_261 = x_266;
    }
    let x_267 : vec3<f32> = x_261;
    let x_268 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat2;
    let x_274 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_276 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + -(x_274));
    let x_277 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat2;
    let x_283 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_284 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) * x_283);
    let x_285 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_285.x, x_284.x, x_284.y, x_284.z);
    let x_288 : f32 = u_xlat2.y;
    u_xlat9.x = ((x_288 * 0.25f) + 0.75f);
    let x_296 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_296 * 0.5f) + 0.75f);
    let x_301 : f32 = u_xlat9.x;
    let x_302 : f32 = u_xlat24;
    u_xlat2.x = max(x_301, x_302);
    let x_313 : vec4<f32> = u_xlat2;
    let x_315 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_313.x, x_313.z, x_313.w));
    u_xlat2 = x_315;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_321, x_323);
  let x_327 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_327, 0.0f, 1.0f);
  let x_330 : vec3<f32> = vs_TEXCOORD2;
  let x_333 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_330.y, x_330.y, x_330.y, x_330.y) * x_333);
  let x_336 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_337 : vec3<f32> = vs_TEXCOORD2;
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_336 * vec4<f32>(x_337.x, x_337.x, x_337.x, x_337.x)) + x_340);
  let x_343 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_344 : vec3<f32> = vs_TEXCOORD2;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_343 * vec4<f32>(x_344.z, x_344.z, x_344.z, x_344.z)) + x_347);
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_349 + x_351);
  let x_353 : vec4<f32> = u_xlat5;
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_353.x, x_353.y, x_353.z) / vec3<f32>(x_355.w, x_355.w, x_355.w));
  let x_359 : vec3<f32> = u_xlat9;
  let x_360 : vec2<f32> = vec2<f32>(x_359.x, x_359.y);
  let x_362 : f32 = u_xlat9.z;
  txVec0 = vec3<f32>(x_360.x, x_360.y, x_362);
  let x_374 : vec3<f32> = txVec0;
  let x_376 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_374.xy, x_374.z);
  u_xlat9.x = x_376;
  let x_380 : f32 = x_21.x_LightShadowData.x;
  u_xlat16 = (-(x_380) + 1.0f);
  let x_384 : f32 = u_xlat9.x;
  let x_385 : f32 = u_xlat16;
  let x_388 : f32 = x_21.x_LightShadowData.x;
  u_xlat9.x = ((x_384 * x_385) + x_388);
  let x_392 : f32 = u_xlat9.x;
  let x_395 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_392) + x_395);
  let x_398 : f32 = u_xlat22;
  let x_400 : f32 = u_xlat2.x;
  let x_403 : f32 = u_xlat9.x;
  u_xlat22 = ((x_398 * x_400) + x_403);
  let x_406 : f32 = u_xlat4.z;
  u_xlatb2 = (0.0f < x_406);
  let x_408 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_408);
  let x_411 : vec4<f32> = u_xlat4;
  let x_413 : vec4<f32> = u_xlat4;
  let x_415 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) / vec2<f32>(x_413.w, x_413.w));
  let x_416 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_415.x, x_415.y, x_416.z);
  let x_418 : vec3<f32> = u_xlat9;
  let x_421 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) + vec2<f32>(0.5f, 0.5f));
  let x_422 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_421.x, x_421.y, x_422.z);
  let x_429 : vec3<f32> = u_xlat9;
  let x_431 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_429.x, x_429.y));
  u_xlat9.x = x_431.w;
  let x_435 : f32 = u_xlat9.x;
  let x_437 : f32 = u_xlat2.x;
  u_xlat2.x = (x_435 * x_437);
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_451 : vec3<f32> = u_xlat9;
  let x_453 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_451.x, x_451.x));
  u_xlat9.x = x_453.x;
  let x_457 : f32 = u_xlat9.x;
  let x_459 : f32 = u_xlat2.x;
  u_xlat2.x = (x_457 * x_459);
  let x_462 : f32 = u_xlat22;
  let x_464 : f32 = u_xlat2.x;
  u_xlat22 = (x_462 * x_464);
  let x_466 : f32 = u_xlat22;
  let x_470 : vec4<f32> = x_21.x_LightColor0;
  let x_472 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_476 : vec3<f32> = vs_TEXCOORD1;
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_476, x_477);
  let x_479 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_479);
  let x_481 : f32 = u_xlat22;
  let x_483 : vec3<f32> = vs_TEXCOORD1;
  let x_484 : vec3<f32> = (vec3<f32>(x_481, x_481, x_481) * x_483);
  let x_485 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_489 : vec4<f32> = x_21.x_Color;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = x_21.x_Metallic;
  let x_500 : f32 = x_21.x_Metallic;
  let x_502 : f32 = x_21.x_Metallic;
  let x_503 : vec3<f32> = vec3<f32>(x_498, x_500, x_502);
  let x_508 : vec4<f32> = u_xlat5;
  let x_513 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_508.x, x_508.y, x_508.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_514 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_517 : f32 = x_21.x_Metallic;
  u_xlat22 = ((-(x_517) * 0.959999979f) + 0.959999979f);
  let x_523 : f32 = u_xlat22;
  let x_526 : vec4<f32> = x_21.x_Color;
  u_xlat6 = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_531 : f32 = x_21.x_Glossiness;
  u_xlat22 = (-(x_531) + 1.0f);
  let x_534 : vec3<f32> = u_xlat0;
  let x_535 : f32 = u_xlat21;
  let x_538 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_534 * vec3<f32>(x_535, x_535, x_535)) + x_538);
  let x_540 : vec3<f32> = u_xlat0;
  let x_541 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_540, x_541);
  let x_543 : f32 = u_xlat21;
  u_xlat21 = max(x_543, 0.001f);
  let x_546 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_546);
  let x_548 : f32 = u_xlat21;
  let x_550 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_548, x_548, x_548) * x_550);
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_552.x, x_552.y, x_552.z), x_554);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), x_558);
  let x_560 : f32 = u_xlat23;
  u_xlat23 = clamp(x_560, 0.0f, 1.0f);
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), x_564);
  let x_568 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_568, 0.0f, 1.0f);
  let x_571 : vec3<f32> = u_xlat1;
  let x_572 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_571, x_572);
  let x_576 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_576, 0.0f, 1.0f);
  let x_581 : f32 = u_xlat0.x;
  let x_583 : f32 = u_xlat0.x;
  u_xlat7.x = (x_581 * x_583);
  let x_586 : vec3<f32> = u_xlat7;
  let x_588 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_586.x, x_586.x), vec2<f32>(x_588, x_588));
  let x_593 : f32 = u_xlat7.x;
  u_xlat7.x = (x_593 + -0.5f);
  let x_598 : f32 = u_xlat23;
  u_xlat14 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat14;
  let x_602 : f32 = u_xlat14;
  u_xlat1.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat1.x;
  let x_608 : f32 = u_xlat1.x;
  u_xlat1.x = (x_606 * x_608);
  let x_611 : f32 = u_xlat14;
  let x_613 : f32 = u_xlat1.x;
  u_xlat14 = (x_611 * x_613);
  let x_616 : f32 = u_xlat7.x;
  let x_617 : f32 = u_xlat14;
  u_xlat14 = ((x_616 * x_617) + 1.0f);
  let x_620 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_620)) + 1.0f);
  let x_627 : f32 = u_xlat1.x;
  let x_629 : f32 = u_xlat1.x;
  u_xlat8 = (x_627 * x_629);
  let x_631 : f32 = u_xlat8;
  let x_632 : f32 = u_xlat8;
  u_xlat8 = (x_631 * x_632);
  let x_635 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat8;
  u_xlat1.x = (x_635 * x_636);
  let x_640 : f32 = u_xlat7.x;
  let x_642 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_640 * x_642) + 1.0f);
  let x_647 : f32 = u_xlat7.x;
  let x_648 : f32 = u_xlat14;
  u_xlat7.x = (x_647 * x_648);
  let x_651 : f32 = u_xlat22;
  let x_652 : f32 = u_xlat22;
  u_xlat14 = (x_651 * x_652);
  let x_654 : f32 = u_xlat14;
  u_xlat14 = max(x_654, 0.002f);
  let x_657 : f32 = u_xlat14;
  u_xlat1.x = (-(x_657) + 1.0f);
  let x_661 : f32 = u_xlat21;
  let x_664 : f32 = u_xlat1.x;
  let x_666 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_661) * x_664) + x_666);
  let x_668 : f32 = u_xlat23;
  let x_670 : f32 = u_xlat1.x;
  let x_672 : f32 = u_xlat14;
  u_xlat1.x = ((x_668 * x_670) + x_672);
  let x_675 : f32 = u_xlat21;
  let x_678 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_675) * x_678);
  let x_680 : f32 = u_xlat23;
  let x_681 : f32 = u_xlat8;
  let x_683 : f32 = u_xlat21;
  u_xlat21 = ((x_680 * x_681) + x_683);
  let x_685 : f32 = u_xlat21;
  u_xlat21 = (x_685 + 0.00001f);
  let x_688 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_688);
  let x_690 : f32 = u_xlat14;
  let x_691 : f32 = u_xlat14;
  u_xlat14 = (x_690 * x_691);
  let x_694 : f32 = u_xlat3.x;
  let x_695 : f32 = u_xlat14;
  let x_698 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_694 * x_695) + -(x_698));
  let x_703 : f32 = u_xlat1.x;
  let x_705 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_703 * x_705) + 1.0f);
  let x_709 : f32 = u_xlat14;
  u_xlat14 = (x_709 * 0.318309873f);
  let x_713 : f32 = u_xlat1.x;
  let x_715 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_713 * x_715) + 0.0000001f);
  let x_720 : f32 = u_xlat14;
  let x_722 : f32 = u_xlat1.x;
  u_xlat14 = (x_720 / x_722);
  let x_724 : f32 = u_xlat14;
  let x_725 : f32 = u_xlat21;
  u_xlat7.y = (x_724 * x_725);
  let x_728 : f32 = u_xlat23;
  let x_730 : vec3<f32> = u_xlat7;
  let x_732 : vec2<f32> = (vec2<f32>(x_728, x_728) * vec2<f32>(x_730.x, x_730.y));
  let x_733 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_732.x, x_732.y, x_733.z);
  let x_736 : f32 = u_xlat7.y;
  u_xlat14 = (x_736 * 3.141592741f);
  let x_739 : f32 = u_xlat14;
  u_xlat14 = max(x_739, 0.0f);
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec4<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_741.x, x_741.y, x_741.z), vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_747 : f32 = u_xlat21;
  u_xlatb21 = !((x_747 == 0.0f));
  let x_749 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_749);
  let x_751 : f32 = u_xlat21;
  let x_752 : f32 = u_xlat14;
  u_xlat14 = (x_751 * x_752);
  let x_754 : vec3<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_754.x, x_754.x, x_754.x) * vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat2;
  let x_761 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(x_761, x_761, x_761));
  let x_765 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_765) + 1.0f);
  let x_770 : f32 = u_xlat0.x;
  let x_772 : f32 = u_xlat0.x;
  u_xlat22 = (x_770 * x_772);
  let x_774 : f32 = u_xlat22;
  let x_775 : f32 = u_xlat22;
  u_xlat22 = (x_774 * x_775);
  let x_778 : f32 = u_xlat0.x;
  let x_779 : f32 = u_xlat22;
  u_xlat0.x = (x_778 * x_779);
  let x_782 : vec4<f32> = u_xlat5;
  let x_786 : vec3<f32> = (-(vec3<f32>(x_782.x, x_782.y, x_782.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_787 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat2;
  let x_791 : vec3<f32> = u_xlat0;
  let x_794 : vec4<f32> = u_xlat5;
  let x_796 : vec3<f32> = ((vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(x_791.x, x_791.x, x_791.x)) + vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_797 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec3<f32> = u_xlat7;
  let x_800 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_799 * vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_805 : vec3<f32> = u_xlat6;
  let x_806 : vec3<f32> = u_xlat1;
  let x_808 : vec3<f32> = u_xlat0;
  let x_809 : vec3<f32> = ((x_805 * x_806) + x_808);
  let x_810 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

