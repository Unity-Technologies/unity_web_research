type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_SinTime : vec4<f32>,
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
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_22 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(13) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(15) var sampler_DisplacementNoise : sampler;

@group(0) @binding(14) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(16) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_26 : f32 = x_22.x_DisplacementScale;
  let x_28 : f32 = x_22.x_DisplacementScale;
  let x_30 : f32 = x_22.x_DisplacementScale;
  let x_31 : vec3<f32> = vec3<f32>(x_26, x_28, x_30);
  let x_36 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = in_COLOR0;
  let x_44 : vec3<f32> = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.z, x_42.z, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_51 : f32 = x_22.x_SinTime.y;
  let x_54 : f32 = x_22.x_DisplacementSpeed;
  u_xlat1.y = (x_51 * x_54);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_63 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = in_COLOR0;
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.y, x_65.y, x_65.y)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_83.x, x_83.y, x_83.z), 0.0f);
  u_xlat0 = x_85;
  let x_91 : i32 = x_22.x_DisplacementIndex;
  u_xlati1 = x_91;
  let x_92 : vec4<f32> = u_xlat0;
  let x_102 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_107 : vec4<u32> = indexable[x_102];
  u_xlat0.x = dot(x_92, bitcast<vec4<f32>>(x_107));
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = textureSampleLevel(x_DisplacementRamp, sampler_DisplacementRamp, vec2<f32>(x_120.x, x_120.x), 0.0f);
  u_xlat0.x = x_122.x;
  let x_126 : f32 = u_xlat0.x;
  let x_129 : f32 = x_22.x_Displacement;
  u_xlat0.x = (x_126 * x_129);
  let x_133 : f32 = u_xlat0.x;
  let x_136 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_133 * x_136);
  let x_141 : vec3<f32> = in_NORMAL0;
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = in_POSITION0;
  let x_147 : vec3<f32> = ((x_141 * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_150.y, x_150.y, x_150.y, x_150.y) * x_156);
  let x_159 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_160 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_159 * vec4<f32>(x_160.x, x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_167 * vec4<f32>(x_168.z, x_168.z, x_168.z, x_168.z)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  u_xlat1 = (x_173 + x_176);
  let x_179 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  let x_181 : vec4<f32> = in_POSITION0;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.w, x_181.w, x_181.w)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = x_22.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_190.y, x_190.y, x_190.y, x_190.y) * x_194);
  let x_197 : vec4<f32> = x_22.unity_MatrixVP[0i];
  let x_198 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_197 * vec4<f32>(x_198.x, x_198.x, x_198.x, x_198.x)) + x_201);
  let x_204 : vec4<f32> = x_22.unity_MatrixVP[2i];
  let x_205 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_204 * vec4<f32>(x_205.z, x_205.z, x_205.z, x_205.z)) + x_208);
  let x_211 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_211 * vec4<f32>(x_212.w, x_212.w, x_212.w, x_212.w)) + x_215);
  let x_221 : vec4<f32> = u_xlat1;
  gl_Position = x_221;
  let x_224 : vec3<f32> = in_NORMAL0;
  let x_227 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_224, vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_231 : vec3<f32> = in_NORMAL0;
  let x_233 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_231, vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_237 : vec3<f32> = in_NORMAL0;
  let x_239 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_237, vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_249);
  let x_251 : f32 = u_xlat18;
  let x_253 : vec4<f32> = u_xlat2;
  let x_255 : vec3<f32> = (vec3<f32>(x_251, x_251, x_251) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_260 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_260.x, x_260.y, x_260.z);
  let x_263 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_263.x, x_263.y, x_263.z);
  let x_266 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_266;
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_268.x, x_268.x, x_268.x, x_268.x)) + x_272);
  let x_275 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_275.y, x_275.y, x_275.y, x_275.y)) + x_279);
  let x_281 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_281.z, x_281.z, x_281.z, x_281.z)) + x_286);
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_289.y, x_289.y, x_289.y, x_289.y) * x_291);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_293 * x_294);
  let x_296 : vec4<f32> = u_xlat3;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_296 * x_297) + x_299);
  let x_301 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat2;
  let x_305 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_301 * vec4<f32>(x_302.x, x_302.x, x_302.x, x_302.x)) + x_305);
  let x_307 : vec4<f32> = u_xlat0;
  let x_308 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_307 * vec4<f32>(x_308.z, x_308.z, x_308.z, x_308.z)) + x_311);
  let x_313 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_313 * x_314) + x_316);
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_318, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_322);
  let x_324 : vec4<f32> = u_xlat0;
  let x_327 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat0 = ((x_324 * x_327) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_332);
  let x_334 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_334 * x_335);
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_337, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_340 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_340 * x_341);
  let x_343 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_349 : vec3<f32> = (vec3<f32>(x_343.y, x_343.y, x_343.y) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_355 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.x, x_355.x, x_355.x)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_366 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_377 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.w, x_377.w, x_377.w)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat2.y;
  let x_388 : f32 = u_xlat2.y;
  u_xlat18 = (x_386 * x_388);
  let x_391 : f32 = u_xlat2.x;
  let x_393 : f32 = u_xlat2.x;
  let x_395 : f32 = u_xlat18;
  u_xlat18 = ((x_391 * x_393) + -(x_395));
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_398.y, x_398.z, x_398.z, x_398.x) * vec4<f32>(x_400.x, x_400.y, x_400.z, x_400.z));
  let x_405 : vec4<f32> = x_22.unity_SHBr;
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_405, x_406);
  let x_411 : vec4<f32> = x_22.unity_SHBg;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_411, x_412);
  let x_417 : vec4<f32> = x_22.unity_SHBb;
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_22.unity_SHC;
  let x_425 : f32 = u_xlat18;
  let x_428 : vec4<f32> = u_xlat3;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425, x_425, x_425)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = u_xlat2;
  vs_TEXCOORD2 = (vec3<f32>(x_434.x, x_434.y, x_434.z) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_440 : f32 = u_xlat1.y;
  let x_442 : f32 = x_22.x_ProjectionParams.x;
  u_xlat0.x = (x_440 * x_442);
  let x_446 : f32 = u_xlat0.x;
  u_xlat0.w = (x_446 * 0.5f);
  let x_451 : vec4<f32> = u_xlat1;
  let x_454 : vec2<f32> = (vec2<f32>(x_451.x, x_451.w) * vec2<f32>(0.5f, 0.5f));
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_454.x, x_455.y, x_454.y, x_455.w);
  let x_458 : vec4<f32> = u_xlat1;
  let x_459 : vec2<f32> = vec2<f32>(x_458.z, x_458.w);
  let x_460 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_460.x, x_460.y, x_459.x, x_459.y);
  let x_462 : vec4<f32> = u_xlat0;
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec2<f32> = (vec2<f32>(x_462.z, x_462.z) + vec2<f32>(x_464.x, x_464.w));
  let x_467 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

