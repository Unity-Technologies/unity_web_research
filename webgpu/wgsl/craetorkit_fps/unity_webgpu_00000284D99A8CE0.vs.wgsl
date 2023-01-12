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

var<private> vs_TEXCOORD6 : f32;

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
  let x_183 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_184 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_183 * vec4<f32>(x_184.w, x_184.w, x_184.w, x_184.w)) + x_187);
  let x_193 : vec4<f32> = u_xlat1;
  gl_Position = x_193;
  let x_199 : f32 = u_xlat1.z;
  vs_TEXCOORD6 = x_199;
  let x_204 : vec4<f32> = in_TEXCOORD0;
  let x_208 : vec4<f32> = x_19.x_MainTex_ST;
  let x_212 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_208.x, x_208.y)) + vec2<f32>(x_212.z, x_212.w));
  let x_215 : vec3<f32> = in_NORMAL0;
  let x_217 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_215, vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = in_NORMAL0;
  let x_223 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_221, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_227 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_227, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat13;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = (vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_249 : vec4<f32> = in_TANGENT0;
  let x_252 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_254 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_252.y, x_252.z, x_252.x));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_260 : vec4<f32> = in_TANGENT0;
  let x_263 : vec4<f32> = u_xlat2;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.y, x_258.z, x_258.x) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_271 : vec4<f32> = in_TANGENT0;
  let x_274 : vec4<f32> = u_xlat2;
  let x_276 : vec3<f32> = ((vec3<f32>(x_269.y, x_269.z, x_269.x) * vec3<f32>(x_271.z, x_271.z, x_271.z)) + vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_284);
  let x_286 : f32 = u_xlat13;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec3<f32> = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat2;
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_300.z, x_300.x, x_300.y) * vec3<f32>(x_302.y, x_302.z, x_302.x)) + -(x_305));
  let x_310 : f32 = in_TANGENT0.w;
  let x_312 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat13 = (x_310 * x_312);
  let x_314 : f32 = u_xlat13;
  let x_316 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_314, x_314, x_314) * x_316);
  let x_321 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_321;
  let x_324 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_324;
  let x_327 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_327;
  let x_331 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_331;
  let x_335 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_335;
  let x_338 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_338;
  let x_341 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_341;
  let x_344 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_344;
  let x_347 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_347;
  let x_351 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_353 : vec4<f32> = in_POSITION0;
  let x_356 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.w, x_353.w, x_353.w)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_361 : vec4<f32> = in_POSITION0;
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_360 * vec4<f32>(x_361.w, x_361.w, x_361.w, x_361.w)) + x_364);
  let x_366 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = x_19.unity_WorldToLight[1i];
  let x_372 : vec3<f32> = (vec3<f32>(x_366.y, x_366.y, x_366.y) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_378 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.x, x_378.x, x_378.x)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_389 : vec4<f32> = u_xlat0;
  let x_392 : vec4<f32> = u_xlat1;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389.z, x_389.z, x_389.z)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_400 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_402 : vec4<f32> = u_xlat0;
  let x_405 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.w, x_402.w, x_402.w)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD6_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

