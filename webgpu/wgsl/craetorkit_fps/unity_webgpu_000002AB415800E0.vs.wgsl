struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_74 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  gl_Position = ((x_74 * vec4<f32>(x_75.w, x_75.w, x_75.w, x_75.w)) + x_78);
  let x_85 : vec4<f32> = in_TEXCOORD0;
  let x_89 : vec4<f32> = x_17.x_MainTex_ST;
  let x_93 : vec4<f32> = x_17.x_MainTex_ST;
  let x_95 : vec2<f32> = ((vec2<f32>(x_85.x, x_85.y) * vec2<f32>(x_89.x, x_89.y)) + vec2<f32>(x_93.z, x_93.w));
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_98 : vec4<f32> = in_TEXCOORD0;
  let x_102 : vec4<f32> = x_17.x_Normal_ST;
  let x_106 : vec4<f32> = x_17.x_Normal_ST;
  let x_108 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_109.x, x_109.y, x_108.x, x_108.y);
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_130 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_128, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_141);
  let x_143 : f32 = u_xlat17;
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_153 : vec4<f32> = in_TANGENT0;
  let x_156 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_153.y, x_153.y, x_153.y) * vec3<f32>(x_156.y, x_156.z, x_156.x));
  let x_160 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_162 : vec4<f32> = in_TANGENT0;
  let x_165 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_160.y, x_160.z, x_160.x) * vec3<f32>(x_162.x, x_162.x, x_162.x)) + x_165);
  let x_168 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_170 : vec4<f32> = in_TANGENT0;
  let x_173 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_168.y, x_168.z, x_168.x) * vec3<f32>(x_170.z, x_170.z, x_170.z)) + x_173);
  let x_175 : vec3<f32> = u_xlat3;
  let x_176 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat17;
  let x_182 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_185.x, x_185.y, x_185.z) * x_187);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = u_xlat3;
  let x_194 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_189.z, x_189.x, x_189.y) * vec3<f32>(x_191.y, x_191.z, x_191.x)) + -(x_194));
  let x_200 : f32 = in_TANGENT0.w;
  let x_203 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat17 = (x_200 * x_203);
  let x_205 : f32 = u_xlat17;
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_205, x_205, x_205) * x_207);
  let x_212 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_212;
  let x_216 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_216;
  let x_219 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_219;
  let x_223 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_223;
  let x_227 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_227;
  let x_230 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_230;
  let x_233 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_233;
  let x_236 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_236;
  let x_239 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_239;
  let x_243 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_245 : vec4<f32> = in_POSITION0;
  let x_248 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.w, x_245.w, x_245.w)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_252 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_253 : vec4<f32> = in_POSITION0;
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_252 * vec4<f32>(x_253.w, x_253.w, x_253.w, x_253.w)) + x_256);
  let x_260 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_260;
  let x_262 : f32 = u_xlat1.y;
  let x_265 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2.x = (x_262 * x_265);
  let x_269 : f32 = x_17.unity_MatrixV[0i].z;
  let x_271 : f32 = u_xlat1.x;
  let x_274 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_269 * x_271) + x_274);
  let x_278 : f32 = x_17.unity_MatrixV[2i].z;
  let x_280 : f32 = u_xlat1.z;
  let x_283 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_278 * x_280) + x_283);
  let x_287 : f32 = x_17.unity_MatrixV[3i].z;
  let x_289 : f32 = u_xlat1.w;
  let x_292 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_287 * x_289) + x_292);
  let x_298 : f32 = u_xlat2.x;
  vs_TEXCOORD5.z = -(x_298);
  let x_302 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_307 : vec3<f32> = (vec3<f32>(x_302.y, x_302.y, x_302.y) * vec3<f32>(x_305.x, x_305.y, x_305.w));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_313 : vec4<f32> = u_xlat1;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.w) * vec3<f32>(x_313.x, x_313.x, x_313.x)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_324 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = u_xlat2;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.w) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_335 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat1;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.w) * vec3<f32>(x_335.w, x_335.w, x_335.w)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat1;
  let x_347 : vec2<f32> = (vec2<f32>(x_343.x, x_343.z) * vec2<f32>(0.5f, 0.5f));
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_347.x, x_348.y, x_347.y, x_348.w);
  let x_351 : f32 = u_xlat1.y;
  let x_353 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.x = (x_351 * x_353);
  let x_357 : f32 = u_xlat1.z;
  vs_TEXCOORD5.w = x_357;
  let x_360 : f32 = u_xlat1.x;
  u_xlat2.w = (x_360 * 0.5f);
  let x_363 : vec4<f32> = u_xlat2;
  let x_365 : vec4<f32> = u_xlat2;
  let x_367 : vec2<f32> = (vec2<f32>(x_363.z, x_363.z) + vec2<f32>(x_365.x, x_365.w));
  let x_368 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.y, x_370.y) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_382 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.x, x_382.x)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_393 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.z, x_393.z, x_393.z)) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_404 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_406 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.w, x_406.w, x_406.w)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}

