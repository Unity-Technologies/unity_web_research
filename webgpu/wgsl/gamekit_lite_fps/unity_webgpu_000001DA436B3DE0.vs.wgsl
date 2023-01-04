type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_Time : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Cutoff : f32,
  x_DisplaceAmount : f32,
  @size(8)
  padding : u32,
  x_Noise_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(19) var x_Gradient : texture_2d<f32>;

@group(0) @binding(20) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(18) var<uniform> x_45 : VGlobals;

var<private> u_xlat6 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.x;
  let x_33 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + 1.0f);
  let x_39 : f32 = u_xlat0.x;
  let x_50 : f32 = x_45.x_Cutoff;
  u_xlat0.x = (x_39 + -(x_50));
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 * -3.333333254f);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_60, 0.0f, 1.0f);
  let x_67 : f32 = u_xlat0.x;
  u_xlat6.x = ((x_67 * -2.0f) + 3.0f);
  let x_74 : f32 = u_xlat0.x;
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (x_74 * x_76);
  let x_80 : f32 = u_xlat0.x;
  let x_82 : f32 = u_xlat6.x;
  u_xlat0.x = (x_80 * x_82);
  let x_86 : vec4<f32> = in_POSITION0;
  let x_92 : vec4<f32> = x_45.unity_ObjectToWorld[1i];
  let x_94 : vec2<f32> = (vec2<f32>(x_86.y, x_86.y) * vec2<f32>(x_92.x, x_92.y));
  let x_95 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_94.x, x_94.y, x_95.z);
  let x_99 : vec4<f32> = x_45.unity_ObjectToWorld[0i];
  let x_101 : vec4<f32> = in_POSITION0;
  let x_104 : vec3<f32> = u_xlat6;
  let x_106 : vec2<f32> = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_101.x, x_101.x)) + vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_106.x, x_106.y, x_107.z);
  let x_112 : vec4<f32> = x_45.unity_ObjectToWorld[2i];
  let x_114 : vec4<f32> = in_POSITION0;
  let x_117 : vec3<f32> = u_xlat6;
  let x_119 : vec2<f32> = ((vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_114.z, x_114.z)) + vec2<f32>(x_117.x, x_117.y));
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_119.x, x_119.y, x_120.w);
  let x_123 : f32 = x_45.x_Time.x;
  let x_128 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_123 * 30.0f) + x_128);
  let x_131 : vec4<f32> = u_xlat1;
  let x_135 : vec2<f32> = (vec2<f32>(x_131.x, x_131.z) * vec2<f32>(0.5f, 0.5f));
  let x_136 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_135.x, x_135.y, x_136.z);
  let x_143 : vec3<f32> = u_xlat6;
  let x_145 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_143.x, x_143.y), 0.0f);
  u_xlat6 = vec3<f32>(x_145.x, x_145.y, x_145.z);
  let x_147 : vec3<f32> = u_xlat6;
  let x_150 : vec3<f32> = in_NORMAL0;
  u_xlat6 = (x_147 * x_150);
  let x_152 : vec4<f32> = u_xlat0;
  let x_154 : vec3<f32> = u_xlat6;
  let x_155 : vec3<f32> = (vec3<f32>(x_152.x, x_152.x, x_152.x) * x_154);
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : f32 = x_45.x_Cutoff;
  let x_163 : f32 = x_45.x_Cutoff;
  let x_165 : f32 = x_45.x_Cutoff;
  let x_166 : vec3<f32> = vec3<f32>(x_161, x_163, x_165);
  let x_171 : vec3<f32> = (vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : f32 = x_45.x_DisplaceAmount;
  let x_180 : f32 = x_45.x_DisplaceAmount;
  let x_182 : f32 = x_45.x_DisplaceAmount;
  let x_183 : vec3<f32> = vec3<f32>(x_178, x_180, x_182);
  let x_189 : vec4<f32> = in_POSITION0;
  let x_191 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_183.x, x_183.y, x_183.z)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = x_45.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_194.y, x_194.y, x_194.y, x_194.y) * x_197);
  let x_200 : vec4<f32> = x_45.unity_ObjectToWorld[0i];
  let x_201 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_200 * vec4<f32>(x_201.x, x_201.x, x_201.x, x_201.x)) + x_204);
  let x_207 : vec4<f32> = x_45.unity_ObjectToWorld[2i];
  let x_208 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_207 * vec4<f32>(x_208.z, x_208.z, x_208.z, x_208.z)) + x_211);
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = x_45.unity_ObjectToWorld[3i];
  u_xlat1 = (x_213 + x_216);
  let x_219 : vec4<f32> = x_45.unity_ObjectToWorld[3i];
  let x_221 : vec4<f32> = in_POSITION0;
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = x_45.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_230.y, x_230.y, x_230.y, x_230.y) * x_234);
  let x_237 : vec4<f32> = x_45.unity_MatrixVP[0i];
  let x_238 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_237 * vec4<f32>(x_238.x, x_238.x, x_238.x, x_238.x)) + x_241);
  let x_244 : vec4<f32> = x_45.unity_MatrixVP[2i];
  let x_245 : vec4<f32> = u_xlat1;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_244 * vec4<f32>(x_245.z, x_245.z, x_245.z, x_245.z)) + x_248);
  let x_251 : vec4<f32> = x_45.unity_MatrixVP[3i];
  let x_252 : vec4<f32> = u_xlat1;
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_251 * vec4<f32>(x_252.w, x_252.w, x_252.w, x_252.w)) + x_255);
  let x_261 : vec4<f32> = u_xlat1;
  gl_Position = x_261;
  let x_265 : vec4<f32> = in_TEXCOORD0;
  let x_269 : vec4<f32> = x_45.x_Noise_ST;
  let x_273 : vec4<f32> = x_45.x_Noise_ST;
  let x_275 : vec2<f32> = ((vec2<f32>(x_265.x, x_265.y) * vec2<f32>(x_269.x, x_269.y)) + vec2<f32>(x_273.z, x_273.w));
  let x_276 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_278 : vec4<f32> = in_TEXCOORD0;
  let x_282 : vec4<f32> = x_45.x_MainTex_ST;
  let x_286 : vec4<f32> = x_45.x_MainTex_ST;
  let x_288 : vec2<f32> = ((vec2<f32>(x_278.x, x_278.y) * vec2<f32>(x_282.x, x_282.y)) + vec2<f32>(x_286.z, x_286.w));
  let x_289 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_289.x, x_289.y, x_288.x, x_288.y);
  let x_293 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_293;
  let x_298 : vec4<f32> = in_TANGENT0;
  let x_301 : vec4<f32> = x_45.unity_ObjectToWorld[1i];
  let x_303 : vec3<f32> = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_301.y, x_301.z, x_301.x));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec4<f32> = x_45.unity_ObjectToWorld[0i];
  let x_309 : vec4<f32> = in_TANGENT0;
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.y, x_307.z, x_307.x) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : vec4<f32> = x_45.unity_ObjectToWorld[2i];
  let x_320 : vec4<f32> = in_TANGENT0;
  let x_323 : vec4<f32> = u_xlat2;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : vec4<f32> = u_xlat2;
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_334);
  let x_336 : f32 = u_xlat18;
  let x_338 : vec4<f32> = u_xlat2;
  let x_340 : vec3<f32> = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_345 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_345;
  let x_349 : f32 = in_TANGENT0.w;
  let x_352 : f32 = x_45.unity_WorldTransformParams.w;
  u_xlat18 = (x_349 * x_352);
  let x_355 : vec3<f32> = in_NORMAL0;
  let x_358 : vec4<f32> = x_45.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_355, vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_362 : vec3<f32> = in_NORMAL0;
  let x_364 : vec4<f32> = x_45.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_362, vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : vec3<f32> = in_NORMAL0;
  let x_370 : vec4<f32> = x_45.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_368, vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_375 : vec4<f32> = u_xlat3;
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat20 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_380);
  let x_382 : f32 = u_xlat20;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_382, x_382, x_382, x_382) * vec4<f32>(x_384.x, x_384.y, x_384.z, x_384.z));
  let x_388 : vec4<f32> = u_xlat2;
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(x_390.w, x_390.x, x_390.y));
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = u_xlat2;
  let x_400 : vec4<f32> = u_xlat4;
  let x_403 : vec3<f32> = ((vec3<f32>(x_395.y, x_395.w, x_395.x) * vec3<f32>(x_397.y, x_397.z, x_397.x)) + -(vec3<f32>(x_400.x, x_400.y, x_400.z)));
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : f32 = u_xlat18;
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec3<f32> = (vec3<f32>(x_406, x_406, x_406) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_414;
  let x_417 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_417;
  let x_421 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_421;
  let x_425 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_425;
  let x_428 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_428;
  let x_431 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_431;
  let x_434 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_434;
  let x_437 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_437;
  let x_440 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_440;
  let x_443 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_443;
  let x_445 : vec4<f32> = u_xlat0;
  let x_449 : vec4<f32> = x_45.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_445.x, x_445.x, x_445.x, x_445.x)) + x_449);
  let x_451 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = x_45.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_451.y, x_451.y, x_451.y, x_451.y)) + x_455);
  let x_457 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = x_45.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_457.z, x_457.z, x_457.z, x_457.z)) + x_462);
  let x_465 : vec4<f32> = u_xlat3;
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_465.y, x_465.y, x_465.y, x_465.y) * x_467);
  let x_469 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_469 * x_470);
  let x_472 : vec4<f32> = u_xlat2;
  let x_473 : vec4<f32> = u_xlat2;
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_472 * x_473) + x_475);
  let x_477 : vec4<f32> = u_xlat2;
  let x_478 : vec4<f32> = u_xlat3;
  let x_481 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_477 * vec4<f32>(x_478.x, x_478.x, x_478.x, x_478.x)) + x_481);
  let x_483 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = u_xlat3;
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_483 * vec4<f32>(x_484.w, x_484.w, x_484.z, x_484.w)) + x_487);
  let x_489 : vec4<f32> = u_xlat0;
  let x_490 : vec4<f32> = u_xlat0;
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_489 * x_490) + x_492);
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_494, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_498 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_498);
  let x_500 : vec4<f32> = u_xlat0;
  let x_503 : vec4<f32> = x_45.unity_4LightAtten0;
  u_xlat0 = ((x_500 * x_503) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_507);
  let x_509 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_509 * x_510);
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_512, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_515 : vec4<f32> = u_xlat0;
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_515 * x_516);
  let x_518 : vec4<f32> = u_xlat0;
  let x_522 : vec4<f32> = x_45.unity_LightColor[1i];
  let x_524 : vec3<f32> = (vec3<f32>(x_518.y, x_518.y, x_518.y) * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_528 : vec4<f32> = x_45.unity_LightColor[0i];
  let x_530 : vec4<f32> = u_xlat0;
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.x, x_528.y, x_528.z) * vec3<f32>(x_530.x, x_530.x, x_530.x)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_539 : vec4<f32> = x_45.unity_LightColor[2i];
  let x_541 : vec4<f32> = u_xlat0;
  let x_544 : vec4<f32> = u_xlat2;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541.z, x_541.z, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : vec4<f32> = x_45.unity_LightColor[3i];
  let x_552 : vec4<f32> = u_xlat0;
  let x_555 : vec4<f32> = u_xlat0;
  let x_557 : vec3<f32> = ((vec3<f32>(x_550.x, x_550.y, x_550.z) * vec3<f32>(x_552.w, x_552.w, x_552.w)) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat3.y;
  let x_563 : f32 = u_xlat3.y;
  u_xlat18 = (x_561 * x_563);
  let x_566 : f32 = u_xlat3.x;
  let x_568 : f32 = u_xlat3.x;
  let x_570 : f32 = u_xlat18;
  u_xlat18 = ((x_566 * x_568) + -(x_570));
  let x_573 : vec4<f32> = u_xlat3;
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_573.y, x_573.w, x_573.z, x_573.x) * x_575);
  let x_579 : vec4<f32> = x_45.unity_SHBr;
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_579, x_580);
  let x_585 : vec4<f32> = x_45.unity_SHBg;
  let x_586 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_585, x_586);
  let x_591 : vec4<f32> = x_45.unity_SHBb;
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_591, x_592);
  let x_597 : vec4<f32> = x_45.unity_SHC;
  let x_599 : f32 = u_xlat18;
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : vec3<f32> = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599, x_599, x_599)) + vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_609.x, x_609.y, x_609.z) + vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_615 : f32 = u_xlat1.y;
  let x_617 : f32 = x_45.x_ProjectionParams.x;
  u_xlat0.x = (x_615 * x_617);
  let x_621 : f32 = u_xlat0.x;
  u_xlat0.w = (x_621 * 0.5f);
  let x_624 : vec4<f32> = u_xlat1;
  let x_626 : vec2<f32> = (vec2<f32>(x_624.x, x_624.w) * vec2<f32>(0.5f, 0.5f));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_627.y, x_626.y, x_627.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
  let x_632 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_632.x, x_632.y, x_631.x, x_631.y);
  let x_634 : vec4<f32> = u_xlat0;
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : vec2<f32> = (vec2<f32>(x_634.z, x_634.z) + vec2<f32>(x_636.x, x_636.w));
  let x_639 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

