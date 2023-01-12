struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(10) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(11) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : f32 = x_19.x_DisplacementScale;
  let x_25 : f32 = x_19.x_DisplacementScale;
  let x_27 : f32 = x_19.x_DisplacementScale;
  let x_28 : vec3<f32> = vec3<f32>(x_23, x_25, x_27);
  let x_33 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_28.x, x_28.y, x_28.z));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_33.z, x_34.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = in_COLOR0;
  let x_41 : vec3<f32> = (vec3<f32>(x_36.x, x_36.y, x_36.z) * vec3<f32>(x_39.z, x_39.z, x_39.z));
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_49 : f32 = x_19.x_SinTime.y;
  let x_52 : f32 = x_19.x_DisplacementSpeed;
  u_xlat1.y = (x_49 * x_52);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = in_COLOR0;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.y, x_63.y, x_63.y)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_81.x, x_81.y, x_81.z), 0.0f);
  u_xlat0 = x_83;
  let x_89 : i32 = x_19.x_DisplacementIndex;
  u_xlati1 = x_89;
  let x_90 : vec4<f32> = u_xlat0;
  let x_100 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_105 : vec4<u32> = indexable[x_100];
  u_xlat0.x = dot(x_90, bitcast<vec4<f32>>(x_105));
  let x_110 : f32 = u_xlat0.x;
  let x_113 : f32 = x_19.x_Displacement;
  u_xlat0.x = (x_110 * x_113);
  let x_117 : f32 = u_xlat0.x;
  let x_120 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_117 * x_120);
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = in_POSITION0;
  let x_131 : vec3<f32> = ((x_125 * vec3<f32>(x_126.x, x_126.x, x_126.x)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_139);
  let x_142 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_156 + x_159);
  let x_162 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_162.y, x_162.y, x_162.y, x_162.y) * x_166);
  let x_169 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_170 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_169 * vec4<f32>(x_170.x, x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_177 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_176 * vec4<f32>(x_177.z, x_177.z, x_177.z, x_177.z)) + x_180);
  let x_187 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = u_xlat2;
  gl_Position = ((x_187 * vec4<f32>(x_188.w, x_188.w, x_188.w, x_188.w)) + x_191);
  let x_196 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_197 : vec4<f32> = in_POSITION0;
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_196 * vec4<f32>(x_197.w, x_197.w, x_197.w, x_197.w)) + x_200);
  let x_205 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_207 : vec4<f32> = in_POSITION0;
  let x_210 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.w, x_207.w, x_207.w)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_214 : vec4<f32> = u_xlat1;
  let x_218 : vec4<f32> = x_19.unity_WorldToLight[1i];
  let x_220 : vec2<f32> = (vec2<f32>(x_214.y, x_214.y) * vec2<f32>(x_218.x, x_218.y));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
  let x_224 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_226 : vec4<f32> = u_xlat1;
  let x_229 : vec4<f32> = u_xlat0;
  let x_231 : vec2<f32> = ((vec2<f32>(x_224.x, x_224.y) * vec2<f32>(x_226.x, x_226.x)) + vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_235 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_237 : vec4<f32> = u_xlat1;
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec2<f32> = ((vec2<f32>(x_235.x, x_235.y) * vec2<f32>(x_237.z, x_237.z)) + vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_242.x, x_242.y, x_243.z, x_243.w);
  let x_248 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_250 : vec4<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.w, x_250.w)) + vec2<f32>(x_253.x, x_253.y));
  let x_259 : vec4<f32> = in_TEXCOORD0;
  let x_263 : vec4<f32> = x_19.x_MainTex_ST;
  let x_267 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_259.x, x_259.y) * vec2<f32>(x_263.x, x_263.y)) + vec2<f32>(x_267.z, x_267.w));
  let x_270 : vec3<f32> = in_NORMAL0;
  let x_272 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_270, vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_276 : vec3<f32> = in_NORMAL0;
  let x_278 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_276, vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_282 : vec3<f32> = in_NORMAL0;
  let x_284 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_282, vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_294);
  let x_296 : f32 = u_xlat9;
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = (vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : vec4<f32> = in_TANGENT0;
  let x_307 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.y, x_307.z, x_307.x));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_315 : vec4<f32> = in_TANGENT0;
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.y, x_313.z, x_313.x) * vec3<f32>(x_315.x, x_315.x, x_315.x)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_326 : vec4<f32> = in_TANGENT0;
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.y, x_324.z, x_324.x) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_339);
  let x_341 : f32 = u_xlat9;
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = (vec3<f32>(x_341, x_341, x_341) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat2;
  let x_363 : vec3<f32> = ((vec3<f32>(x_355.z, x_355.x, x_355.y) * vec3<f32>(x_357.y, x_357.z, x_357.x)) + -(vec3<f32>(x_360.x, x_360.y, x_360.z)));
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_368 : f32 = in_TANGENT0.w;
  let x_370 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat9 = (x_368 * x_370);
  let x_372 : f32 = u_xlat9;
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec3<f32> = (vec3<f32>(x_372, x_372, x_372) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_381 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_381;
  let x_385 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_385;
  let x_388 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_388;
  let x_392 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_392;
  let x_396 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_396;
  let x_399 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_399;
  let x_402 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_402;
  let x_405 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_405;
  let x_408 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_408;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

