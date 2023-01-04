struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightDir : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb14 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_21 / x_26);
  let x_31 : vec3<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_40 : vec4<f32> = vs_TEXCOORD0;
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec2<f32> = (vec2<f32>(x_40.x, x_40.y) / vec2<f32>(x_42.w, x_42.w));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_45.z, x_45.w);
  let x_58 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_58.x, x_58.y));
  u_xlat18 = x_60.x;
  let x_64 : f32 = x_14.x_ZBufferParams.x;
  let x_65 : f32 = u_xlat18;
  let x_69 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_64 * x_65) + x_69);
  let x_72 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_72);
  let x_75 : f32 = u_xlat18;
  let x_77 : vec3<f32> = u_xlat0;
  let x_78 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_89 : vec3<f32> = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_90 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_94 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_96 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = u_xlat3;
  let x_101 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_101.z);
  let x_105 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat2;
  let x_112 : vec3<f32> = ((vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_107.z, x_107.z, x_107.z)) + vec3<f32>(x_110.x, x_110.y, x_110.w));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_112.z);
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_120 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.w) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_120.z);
  let x_123 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  let x_130 : vec3<f32> = (vec3<f32>(x_123.x, x_123.y, x_123.w) + -(vec3<f32>(x_127.x, x_127.y, x_127.z)));
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat3;
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_140 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_140);
  let x_144 : f32 = u_xlat0.z;
  let x_146 : f32 = u_xlat18;
  let x_149 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_144) * x_146) + x_149);
  let x_154 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_156 : f32 = u_xlat0.x;
  let x_159 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_154 * x_156) + x_159);
  let x_163 : f32 = u_xlat0.x;
  let x_166 : f32 = x_14.x_LightShadowData.z;
  let x_169 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_163 * x_166) + x_169);
  let x_173 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_173, 0.0f, 1.0f);
  let x_184 : vec4<f32> = u_xlat1;
  let x_186 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_184.x, x_184.y));
  u_xlat6.x = x_186.x;
  let x_191 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_191) + 1.0f);
  let x_195 : f32 = u_xlat0.x;
  let x_196 : f32 = u_xlat12;
  let x_199 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_195 * x_196) + x_199);
  let x_202 : vec4<f32> = u_xlat2;
  let x_206 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat6 = (vec2<f32>(x_202.y, x_202.y) * vec2<f32>(x_206.x, x_206.y));
  let x_210 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_212.x, x_212.x)) + x_215);
  let x_218 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_220 : vec4<f32> = u_xlat2;
  let x_223 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_220.w, x_220.w)) + x_223);
  let x_225 : vec4<f32> = u_xlat2;
  let x_229 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_231 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.w) + -(x_229));
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec2<f32> = u_xlat6;
  let x_236 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat6 = (x_234 + vec2<f32>(x_236.x, x_236.y));
  let x_244 : vec2<f32> = u_xlat6;
  let x_246 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_244, -8.0f);
  u_xlat6.x = x_246.w;
  let x_250 : f32 = u_xlat6.x;
  let x_252 : f32 = u_xlat0.x;
  u_xlat0.x = (x_250 * x_252);
  let x_255 : vec3<f32> = u_xlat0;
  let x_259 : vec4<f32> = x_14.x_LightColor;
  u_xlat0 = (vec3<f32>(x_255.x, x_255.x, x_255.x) * vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_267);
  let x_269 : vec4<f32> = u_xlat2;
  let x_272 : f32 = u_xlat18;
  let x_277 : vec4<f32> = x_14.x_LightDir;
  let x_280 : vec3<f32> = ((-(vec3<f32>(x_269.x, x_269.y, x_269.z)) * vec3<f32>(x_272, x_272, x_272)) + -(vec3<f32>(x_277.x, x_277.y, x_277.z)));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : f32 = u_xlat18;
  let x_285 : vec4<f32> = u_xlat2;
  let x_287 : vec3<f32> = (vec3<f32>(x_283, x_283, x_283) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec4<f32> = u_xlat3;
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : f32 = u_xlat18;
  u_xlat18 = max(x_295, 0.001f);
  let x_298 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_298);
  let x_300 : f32 = u_xlat18;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = (vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_313.x, x_313.y));
  u_xlat4 = vec3<f32>(x_315.x, x_315.y, x_315.z);
  let x_317 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_317 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_324 : vec3<f32> = u_xlat4;
  let x_325 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_324, x_325);
  let x_327 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_327);
  let x_329 : f32 = u_xlat18;
  let x_331 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_329, x_329, x_329) * x_331);
  let x_333 : vec3<f32> = u_xlat4;
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(x_333, vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat18;
  u_xlat18 = clamp(x_337, 0.0f, 1.0f);
  let x_341 : vec4<f32> = x_14.x_LightDir;
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat13 = dot(-(vec3<f32>(x_341.x, x_341.y, x_341.z)), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : f32 = u_xlat13;
  u_xlat13 = clamp(x_347, 0.0f, 1.0f);
  let x_354 : vec4<f32> = u_xlat1;
  let x_356 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_354.x, x_354.y));
  u_xlat3 = x_356;
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_362.x, x_362.y));
  let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.z);
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_365.z);
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec4<f32>(x_369.w, x_369.x, x_369.y, x_369.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_376 : f32 = u_xlat5.x;
  let x_378 : f32 = u_xlat5.x;
  u_xlat20 = (x_376 * x_378);
  let x_380 : f32 = u_xlat20;
  u_xlat20 = max(x_380, 0.002f);
  let x_384 : f32 = u_xlat20;
  let x_385 : f32 = u_xlat20;
  u_xlat21 = (x_384 * x_385);
  let x_388 : f32 = u_xlat18;
  let x_389 : f32 = u_xlat21;
  let x_391 : f32 = u_xlat18;
  u_xlat22 = ((x_388 * x_389) + -(x_391));
  let x_394 : f32 = u_xlat22;
  let x_395 : f32 = u_xlat18;
  u_xlat18 = ((x_394 * x_395) + 1.0f);
  let x_398 : f32 = u_xlat18;
  let x_399 : f32 = u_xlat18;
  u_xlat18 = ((x_398 * x_399) + 0.0000001f);
  let x_403 : f32 = u_xlat21;
  u_xlat21 = (x_403 * 0.318309873f);
  let x_406 : f32 = u_xlat21;
  let x_407 : f32 = u_xlat18;
  u_xlat18 = (x_406 / x_407);
  let x_409 : vec3<f32> = u_xlat4;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_409, -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_416 : vec3<f32> = u_xlat4;
  let x_418 : vec4<f32> = x_14.x_LightDir;
  u_xlat8 = dot(x_416, -(vec3<f32>(x_418.x, x_418.y, x_418.z)));
  let x_422 : f32 = u_xlat8;
  u_xlat8 = clamp(x_422, 0.0f, 1.0f);
  let x_425 : f32 = u_xlat20;
  u_xlat14 = (-(x_425) + 1.0f);
  let x_429 : f32 = u_xlat2.x;
  let x_431 : f32 = u_xlat14;
  let x_433 : f32 = u_xlat20;
  u_xlat21 = ((abs(x_429) * x_431) + x_433);
  let x_435 : f32 = u_xlat8;
  let x_436 : f32 = u_xlat14;
  let x_438 : f32 = u_xlat20;
  u_xlat14 = ((x_435 * x_436) + x_438);
  let x_440 : f32 = u_xlat14;
  let x_442 : f32 = u_xlat2.x;
  u_xlat14 = (x_440 * abs(x_442));
  let x_446 : f32 = u_xlat2.x;
  u_xlat2.x = (-(abs(x_446)) + 1.0f);
  let x_451 : f32 = u_xlat8;
  let x_452 : f32 = u_xlat21;
  let x_454 : f32 = u_xlat14;
  u_xlat14 = ((x_451 * x_452) + x_454);
  let x_456 : f32 = u_xlat14;
  u_xlat14 = (x_456 + 0.00001f);
  let x_460 : f32 = u_xlat14;
  u_xlat14 = (0.5f / x_460);
  let x_462 : f32 = u_xlat18;
  let x_463 : f32 = u_xlat14;
  u_xlat18 = (x_462 * x_463);
  let x_465 : f32 = u_xlat8;
  let x_466 : f32 = u_xlat18;
  u_xlat18 = (x_465 * x_466);
  let x_468 : f32 = u_xlat18;
  u_xlat18 = (x_468 * 3.141592741f);
  let x_471 : f32 = u_xlat18;
  u_xlat18 = max(x_471, 0.0f);
  let x_473 : vec4<f32> = u_xlat3;
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat14 = dot(vec3<f32>(x_473.x, x_473.y, x_473.z), vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_481 : f32 = u_xlat14;
  u_xlatb14 = !((x_481 == 0.0f));
  let x_483 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_483);
  let x_485 : f32 = u_xlat18;
  let x_486 : f32 = u_xlat14;
  u_xlat18 = (x_485 * x_486);
  let x_488 : vec3<f32> = u_xlat0;
  let x_489 : f32 = u_xlat18;
  u_xlat4 = (x_488 * vec3<f32>(x_489, x_489, x_489));
  let x_492 : f32 = u_xlat13;
  u_xlat18 = (-(x_492) + 1.0f);
  let x_495 : f32 = u_xlat13;
  let x_496 : f32 = u_xlat13;
  u_xlat13 = (x_495 * x_496);
  let x_498 : f32 = u_xlat13;
  let x_500 : vec4<f32> = u_xlat5;
  u_xlat13 = dot(vec2<f32>(x_498, x_498), vec2<f32>(x_500.x, x_500.x));
  let x_503 : f32 = u_xlat13;
  u_xlat13 = (x_503 + -0.5f);
  let x_506 : f32 = u_xlat18;
  let x_507 : f32 = u_xlat18;
  u_xlat14 = (x_506 * x_507);
  let x_509 : f32 = u_xlat14;
  let x_510 : f32 = u_xlat14;
  u_xlat14 = (x_509 * x_510);
  let x_512 : f32 = u_xlat18;
  let x_513 : f32 = u_xlat14;
  u_xlat18 = (x_512 * x_513);
  let x_515 : vec4<f32> = u_xlat5;
  let x_517 : f32 = u_xlat18;
  let x_520 : vec4<f32> = u_xlat3;
  let x_522 : vec3<f32> = ((vec3<f32>(x_515.y, x_515.z, x_515.w) * vec3<f32>(x_517, x_517, x_517)) + vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat3;
  let x_527 : vec3<f32> = u_xlat4;
  let x_528 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * x_527);
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_532 : f32 = u_xlat2.x;
  let x_534 : f32 = u_xlat2.x;
  u_xlat18 = (x_532 * x_534);
  let x_536 : f32 = u_xlat18;
  let x_537 : f32 = u_xlat18;
  u_xlat18 = (x_536 * x_537);
  let x_540 : f32 = u_xlat2.x;
  let x_541 : f32 = u_xlat18;
  u_xlat18 = (x_540 * x_541);
  let x_543 : f32 = u_xlat13;
  let x_544 : f32 = u_xlat18;
  u_xlat18 = ((x_543 * x_544) + 1.0f);
  let x_547 : f32 = u_xlat8;
  u_xlat2.x = (-(x_547) + 1.0f);
  let x_552 : f32 = u_xlat2.x;
  let x_554 : f32 = u_xlat2.x;
  u_xlat14 = (x_552 * x_554);
  let x_556 : f32 = u_xlat14;
  let x_557 : f32 = u_xlat14;
  u_xlat14 = (x_556 * x_557);
  let x_560 : f32 = u_xlat2.x;
  let x_561 : f32 = u_xlat14;
  u_xlat2.x = (x_560 * x_561);
  let x_564 : f32 = u_xlat13;
  let x_566 : f32 = u_xlat2.x;
  u_xlat13 = ((x_564 * x_566) + 1.0f);
  let x_569 : f32 = u_xlat18;
  let x_570 : f32 = u_xlat13;
  u_xlat18 = (x_569 * x_570);
  let x_572 : f32 = u_xlat8;
  let x_573 : f32 = u_xlat18;
  u_xlat18 = (x_572 * x_573);
  let x_575 : f32 = u_xlat18;
  let x_577 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_581 : vec4<f32> = u_xlat1;
  let x_583 : vec3<f32> = u_xlat0;
  let x_585 : vec4<f32> = u_xlat3;
  let x_587 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.y, x_581.w) * x_583) + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

