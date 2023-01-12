struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(5) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(17) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
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
  let x_140 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_140);
  let x_143 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_151 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_151 * vec4<f32>(x_152.z, x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_157 + x_160);
  let x_163 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.w, x_165.w, x_165.w)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_178);
  let x_181 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_182 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_181 * vec4<f32>(x_182.x, x_182.x, x_182.x, x_182.x)) + x_185);
  let x_188 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_189 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_188 * vec4<f32>(x_189.z, x_189.z, x_189.z, x_189.z)) + x_192);
  let x_195 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_196 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_195 * vec4<f32>(x_196.w, x_196.w, x_196.w, x_196.w)) + x_199);
  let x_205 : vec4<f32> = u_xlat1;
  gl_Position = x_205;
  let x_211 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_211;
  let x_216 : vec4<f32> = in_TEXCOORD0;
  let x_220 : vec4<f32> = x_19.x_MainTex_ST;
  let x_224 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_220.x, x_220.y)) + vec2<f32>(x_224.z, x_224.w));
  let x_229 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_229;
  let x_233 : vec4<f32> = in_TANGENT0;
  let x_236 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_238 : vec3<f32> = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_236.y, x_236.z, x_236.x));
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_244 : vec4<f32> = in_TANGENT0;
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = ((vec3<f32>(x_242.y, x_242.z, x_242.x) * vec3<f32>(x_244.x, x_244.x, x_244.x)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_255 : vec4<f32> = in_TANGENT0;
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253.y, x_253.z, x_253.x) * vec3<f32>(x_255.z, x_255.z, x_255.z)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_270 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_270);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.x, x_273.x) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_281;
  let x_283 : vec3<f32> = in_NORMAL0;
  let x_286 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_283, vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : vec3<f32> = in_NORMAL0;
  let x_292 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_290, vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_296 : vec3<f32> = in_NORMAL0;
  let x_298 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_296, vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_309 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_309);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_312.x, x_312.x, x_312.x, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.w, x_321.x, x_321.y));
  let x_324 : vec4<f32> = u_xlat2;
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_324.y, x_324.w, x_324.x) * vec3<f32>(x_326.y, x_326.z, x_326.x)) + -(x_329));
  let x_333 : f32 = in_TANGENT0.w;
  let x_336 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat0.x = (x_333 * x_336);
  let x_339 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_339.x, x_339.x, x_339.x) * x_341);
  let x_344 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_344;
  let x_347 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_347;
  let x_351 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_351;
  let x_355 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_355;
  let x_358 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_358;
  let x_361 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_361;
  let x_364 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_364;
  let x_367 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_367;
  let x_370 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_370;
  let x_373 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_373;
  let x_376 : f32 = u_xlat2.y;
  let x_378 : f32 = u_xlat2.y;
  u_xlat0.x = (x_376 * x_378);
  let x_382 : f32 = u_xlat2.x;
  let x_384 : f32 = u_xlat2.x;
  let x_387 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_382 * x_384) + -(x_387));
  let x_391 : vec4<f32> = u_xlat2;
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_391.y, x_391.w, x_391.z, x_391.x) * x_393);
  let x_396 : vec4<f32> = x_19.unity_SHBr;
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_396, x_397);
  let x_401 : vec4<f32> = x_19.unity_SHBg;
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_401, x_402);
  let x_406 : vec4<f32> = x_19.unity_SHBb;
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_406, x_407);
  let x_414 : vec4<f32> = x_19.unity_SHC;
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
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
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

