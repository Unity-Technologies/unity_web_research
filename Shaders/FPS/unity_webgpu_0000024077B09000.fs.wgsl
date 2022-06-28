struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat19 : f32;

var<private> u_xlat20 : f32;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

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
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec2<f32>(x_42.x, x_42.y) / vec2<f32>(x_44.w, x_44.w));
  let x_58 : vec2<f32> = u_xlat1;
  let x_59 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_58);
  u_xlat18 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat18;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_71);
  let x_73 : f32 = u_xlat18;
  let x_75 : vec4<f32> = u_xlat0;
  let x_77 : vec3<f32> = (vec3<f32>(x_73, x_73, x_73) * vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat2 = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_92 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_94 : vec4<f32> = u_xlat0;
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.x, x_94.x, x_94.x)) + x_97);
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_98.z);
  let x_102 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_104 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.z, x_104.z, x_104.z)) + vec3<f32>(x_107.x, x_107.y, x_107.w));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_117 : vec3<f32> = (vec3<f32>(x_112.x, x_112.y, x_112.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat0;
  let x_124 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  u_xlat2 = (vec3<f32>(x_120.x, x_120.y, x_120.z) + -(x_124));
  let x_127 : vec3<f32> = u_xlat2;
  let x_128 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_127, x_128);
  let x_130 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_130);
  let x_132 : f32 = u_xlat18;
  let x_134 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = x_14.x_LightPos;
  let x_144 : vec3<f32> = (vec3<f32>(x_137.x, x_137.y, x_137.z) + -(vec3<f32>(x_141.x, x_141.y, x_141.z)));
  let x_145 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat3;
  let x_149 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_147.x, x_147.y, x_147.z), vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_153 : f32 = u_xlat18;
  u_xlat13 = inverseSqrt(x_153);
  let x_155 : f32 = u_xlat18;
  let x_158 : f32 = x_14.x_LightPos.w;
  u_xlat18 = (x_155 * x_158);
  let x_165 : f32 = u_xlat18;
  let x_167 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_165, x_165));
  u_xlat18 = x_167.x;
  let x_170 : vec4<f32> = u_xlat3;
  let x_173 : f32 = u_xlat13;
  let x_176 : vec3<f32> = u_xlat2;
  u_xlat4 = ((-(vec3<f32>(x_170.x, x_170.y, x_170.z)) * vec3<f32>(x_173, x_173, x_173)) + -(x_176));
  let x_179 : f32 = u_xlat13;
  let x_181 : vec4<f32> = u_xlat3;
  let x_183 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec3<f32> = u_xlat4;
  let x_187 : vec3<f32> = u_xlat4;
  u_xlat13 = dot(x_186, x_187);
  let x_189 : f32 = u_xlat13;
  u_xlat13 = max(x_189, 0.001f);
  let x_192 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_192);
  let x_194 : f32 = u_xlat13;
  let x_196 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_194, x_194, x_194) * x_196);
  let x_204 : vec2<f32> = u_xlat1;
  let x_205 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_204);
  let x_206 : vec3<f32> = vec3<f32>(x_205.x, x_205.y, x_205.z);
  let x_207 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat5;
  let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = u_xlat5;
  u_xlat13 = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_224);
  let x_226 : f32 = u_xlat13;
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec3<f32> = (vec3<f32>(x_226, x_226, x_226) * vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec3<f32> = u_xlat4;
  u_xlat13 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), x_235);
  let x_237 : f32 = u_xlat13;
  u_xlat13 = clamp(x_237, 0.0f, 1.0f);
  let x_241 : vec4<f32> = u_xlat3;
  let x_244 : vec3<f32> = u_xlat4;
  u_xlat19 = dot(-(vec3<f32>(x_241.x, x_241.y, x_241.z)), x_244);
  let x_246 : f32 = u_xlat19;
  u_xlat19 = clamp(x_246, 0.0f, 1.0f);
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat20 = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : f32 = u_xlat20;
  u_xlat20 = clamp(x_255, 0.0f, 1.0f);
  let x_257 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), -(x_259));
  let x_268 : vec2<f32> = u_xlat1;
  let x_269 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, x_268);
  u_xlat3 = x_269;
  let x_275 : vec2<f32> = u_xlat1;
  let x_276 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, x_275);
  u_xlat4 = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec4<f32>(x_278.w, x_278.x, x_278.y, x_278.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_284 : f32 = u_xlat5.x;
  let x_286 : f32 = u_xlat5.x;
  u_xlat1.x = (x_284 * x_286);
  let x_290 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_290, 0.002f);
  let x_296 : f32 = u_xlat1.x;
  let x_298 : f32 = u_xlat1.x;
  u_xlat7 = (x_296 * x_298);
  let x_301 : f32 = u_xlat13;
  let x_302 : f32 = u_xlat7;
  let x_304 : f32 = u_xlat13;
  u_xlat8 = ((x_301 * x_302) + -(x_304));
  let x_307 : f32 = u_xlat8;
  let x_308 : f32 = u_xlat13;
  u_xlat13 = ((x_307 * x_308) + 1.0f);
  let x_311 : f32 = u_xlat13;
  let x_312 : f32 = u_xlat13;
  u_xlat13 = ((x_311 * x_312) + 0.0000001f);
  let x_316 : f32 = u_xlat7;
  u_xlat7 = (x_316 * 0.318309873f);
  let x_319 : f32 = u_xlat7;
  let x_320 : f32 = u_xlat13;
  u_xlat7 = (x_319 / x_320);
  let x_323 : f32 = u_xlat1.x;
  u_xlat13 = (-(x_323) + 1.0f);
  let x_327 : f32 = u_xlat2.x;
  let x_329 : f32 = u_xlat13;
  let x_332 : f32 = u_xlat1.x;
  u_xlat8 = ((abs(x_327) * x_329) + x_332);
  let x_334 : f32 = u_xlat20;
  let x_335 : f32 = u_xlat13;
  let x_338 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_334 * x_335) + x_338);
  let x_342 : f32 = u_xlat1.x;
  let x_344 : f32 = u_xlat2.x;
  u_xlat1.x = (x_342 * abs(x_344));
  let x_349 : f32 = u_xlat2.x;
  u_xlat13 = (-(abs(x_349)) + 1.0f);
  let x_353 : f32 = u_xlat20;
  let x_354 : f32 = u_xlat8;
  let x_357 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_353 * x_354) + x_357);
  let x_361 : f32 = u_xlat1.x;
  u_xlat1.x = (x_361 + 0.00001f);
  let x_367 : f32 = u_xlat1.x;
  u_xlat1.x = (0.5f / x_367);
  let x_370 : f32 = u_xlat7;
  let x_372 : f32 = u_xlat1.x;
  u_xlat1.x = (x_370 * x_372);
  let x_375 : f32 = u_xlat20;
  let x_377 : f32 = u_xlat1.x;
  u_xlat1.x = (x_375 * x_377);
  let x_381 : f32 = u_xlat1.x;
  u_xlat1.x = (x_381 * 3.141592741f);
  let x_386 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_386, 0.0f);
  let x_389 : vec4<f32> = u_xlat3;
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat7 = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_397 : f32 = u_xlat7;
  u_xlatb7 = !((x_397 == 0.0f));
  let x_399 : bool = u_xlatb7;
  u_xlat7 = select(0.0f, 1.0f, x_399);
  let x_401 : f32 = u_xlat7;
  let x_403 : f32 = u_xlat1.x;
  u_xlat1.x = (x_401 * x_403);
  let x_406 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat2 = (vec3<f32>(x_406.y, x_406.y, x_406.y) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_414 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + x_419);
  let x_422 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : vec3<f32> = u_xlat2;
  let x_428 : vec3<f32> = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424.z, x_424.z, x_424.z)) + x_427);
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_436 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_450 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_447.x, x_447.y, x_447.z), -8.0f);
  u_xlat0.x = x_450.w;
  let x_454 : f32 = u_xlat0.x;
  let x_455 : f32 = u_xlat18;
  u_xlat0.x = (x_454 * x_455);
  let x_458 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = x_14.x_LightColor;
  let x_464 : vec3<f32> = (vec3<f32>(x_458.x, x_458.x, x_458.x) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec2<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(x_469.x, x_469.x, x_469.x));
  let x_472 : f32 = u_xlat19;
  u_xlat18 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat19;
  let x_476 : f32 = u_xlat19;
  u_xlat1.x = (x_475 * x_476);
  let x_479 : vec2<f32> = u_xlat1;
  let x_481 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec2<f32>(x_479.x, x_479.x), vec2<f32>(x_481.x, x_481.x));
  let x_486 : f32 = u_xlat1.x;
  u_xlat1.x = (x_486 + -0.5f);
  let x_490 : f32 = u_xlat18;
  let x_491 : f32 = u_xlat18;
  u_xlat7 = (x_490 * x_491);
  let x_493 : f32 = u_xlat7;
  let x_494 : f32 = u_xlat7;
  u_xlat7 = (x_493 * x_494);
  let x_496 : f32 = u_xlat18;
  let x_497 : f32 = u_xlat7;
  u_xlat18 = (x_496 * x_497);
  let x_499 : vec4<f32> = u_xlat5;
  let x_501 : f32 = u_xlat18;
  let x_504 : vec4<f32> = u_xlat3;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.y, x_499.z, x_499.w) * vec3<f32>(x_501, x_501, x_501)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec3<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_509 * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : f32 = u_xlat13;
  let x_514 : f32 = u_xlat13;
  u_xlat18 = (x_513 * x_514);
  let x_516 : f32 = u_xlat18;
  let x_517 : f32 = u_xlat18;
  u_xlat18 = (x_516 * x_517);
  let x_519 : f32 = u_xlat13;
  let x_520 : f32 = u_xlat18;
  u_xlat18 = (x_519 * x_520);
  let x_523 : f32 = u_xlat1.x;
  let x_524 : f32 = u_xlat18;
  u_xlat18 = ((x_523 * x_524) + 1.0f);
  let x_527 : f32 = u_xlat20;
  u_xlat7 = (-(x_527) + 1.0f);
  let x_530 : f32 = u_xlat7;
  let x_531 : f32 = u_xlat7;
  u_xlat13 = (x_530 * x_531);
  let x_533 : f32 = u_xlat13;
  let x_534 : f32 = u_xlat13;
  u_xlat13 = (x_533 * x_534);
  let x_536 : f32 = u_xlat7;
  let x_537 : f32 = u_xlat13;
  u_xlat7 = (x_536 * x_537);
  let x_540 : f32 = u_xlat1.x;
  let x_541 : f32 = u_xlat7;
  u_xlat1.x = ((x_540 * x_541) + 1.0f);
  let x_545 : f32 = u_xlat18;
  let x_547 : f32 = u_xlat1.x;
  u_xlat18 = (x_545 * x_547);
  let x_549 : f32 = u_xlat20;
  let x_550 : f32 = u_xlat18;
  u_xlat18 = (x_549 * x_550);
  let x_552 : f32 = u_xlat18;
  let x_554 : vec4<f32> = u_xlat0;
  let x_556 : vec3<f32> = (vec3<f32>(x_552, x_552, x_552) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec3<f32> = u_xlat4;
  let x_560 : vec4<f32> = u_xlat0;
  let x_563 : vec3<f32> = u_xlat2;
  let x_564 : vec3<f32> = ((x_559 * vec3<f32>(x_560.x, x_560.y, x_560.z)) + x_563);
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  u_xlat0.w = 1.0f;
  let x_570 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_570));
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

