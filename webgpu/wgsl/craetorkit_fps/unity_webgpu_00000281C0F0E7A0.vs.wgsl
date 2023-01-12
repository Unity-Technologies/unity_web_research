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

@group(0) @binding(14) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(15) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat3 : vec3<f32>;
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
  let x_199 : vec4<f32> = in_TEXCOORD0;
  let x_203 : vec4<f32> = x_19.x_MainTex_ST;
  let x_207 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_203.x, x_203.y)) + vec2<f32>(x_207.z, x_207.w));
  let x_210 : vec3<f32> = in_NORMAL0;
  let x_212 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_210, vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec3<f32> = in_NORMAL0;
  let x_218 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_216, vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_222 : vec3<f32> = in_NORMAL0;
  let x_224 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_222, vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_234);
  let x_236 : f32 = u_xlat13;
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = in_TANGENT0;
  let x_247 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_249 : vec3<f32> = (vec3<f32>(x_244.y, x_244.y, x_244.y) * vec3<f32>(x_247.y, x_247.z, x_247.x));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_255 : vec4<f32> = in_TANGENT0;
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253.y, x_253.z, x_253.x) * vec3<f32>(x_255.x, x_255.x, x_255.x)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_266 : vec4<f32> = in_TANGENT0;
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec3<f32> = ((vec3<f32>(x_264.y, x_264.z, x_264.x) * vec3<f32>(x_266.z, x_266.z, x_266.z)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat2;
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_279);
  let x_281 : f32 = u_xlat13;
  let x_283 : vec4<f32> = u_xlat2;
  let x_285 : vec3<f32> = (vec3<f32>(x_281, x_281, x_281) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat2;
  let x_300 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_295.z, x_295.x, x_295.y) * vec3<f32>(x_297.y, x_297.z, x_297.x)) + -(x_300));
  let x_305 : f32 = in_TANGENT0.w;
  let x_307 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat13 = (x_305 * x_307);
  let x_309 : f32 = u_xlat13;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309, x_309, x_309) * x_311);
  let x_316 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_316;
  let x_320 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_320;
  let x_323 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_323;
  let x_327 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_327;
  let x_331 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_331;
  let x_334 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_334;
  let x_337 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_337;
  let x_340 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_340;
  let x_343 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_343;
  let x_347 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_349 : vec4<f32> = in_POSITION0;
  let x_352 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349.w, x_349.w, x_349.w)) + vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_356 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_357 : vec4<f32> = in_POSITION0;
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_356 * vec4<f32>(x_357.w, x_357.w, x_357.w, x_357.w)) + x_360);
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_19.unity_WorldToLight[1i];
  let x_368 : vec3<f32> = (vec3<f32>(x_362.y, x_362.y, x_362.y) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_374 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374.x, x_374.x, x_374.x)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_385 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_385.z, x_385.z, x_385.z)) + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_396 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_398 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398.w, x_398.w, x_398.w)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}
