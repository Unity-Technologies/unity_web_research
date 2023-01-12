type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
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
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_103 : f32 = u_xlat2.z;
  vs_TEXCOORD5 = x_103;
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_106, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_122 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_120, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat15;
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec3<f32> = (vec3<f32>(x_134, x_134, x_134) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_143 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_146 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_150 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_150;
  let x_156 : vec2<f32> = in_TEXCOORD0;
  let x_159 : vec4<f32> = x_20.x_MainTex_ST;
  let x_163 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_156 * vec2<f32>(x_159.x, x_159.y)) + vec2<f32>(x_163.z, x_163.w));
  let x_167 : f32 = u_xlat1.y;
  let x_171 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat15 = (x_167 * x_171);
  let x_174 : f32 = x_20.unity_MatrixV[0i].z;
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat15;
  u_xlat15 = ((x_174 * x_176) + x_178);
  let x_181 : f32 = x_20.unity_MatrixV[2i].z;
  let x_183 : f32 = u_xlat1.z;
  let x_185 : f32 = u_xlat15;
  u_xlat15 = ((x_181 * x_183) + x_185);
  let x_188 : f32 = x_20.unity_MatrixV[3i].z;
  let x_191 : f32 = u_xlat1.w;
  let x_193 : f32 = u_xlat15;
  u_xlat15 = ((x_188 * x_191) + x_193);
  let x_197 : f32 = u_xlat15;
  vs_TEXCOORD3.z = -(x_197);
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_207 : vec3<f32> = (vec3<f32>(x_202.y, x_202.y, x_202.y) * vec3<f32>(x_205.x, x_205.y, x_205.w));
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat3;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.w) * vec3<f32>(x_213.x, x_213.x, x_213.x)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_222 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.w) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.w) * vec3<f32>(x_235.w, x_235.w, x_235.w)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_247 : vec2<f32> = (vec2<f32>(x_243.x, x_243.z) * vec2<f32>(0.5f, 0.5f));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_248.y, x_247.y, x_248.w);
  let x_251 : f32 = u_xlat1.y;
  let x_253 : f32 = x_20.x_ProjectionParams.x;
  u_xlat15 = (x_251 * x_253);
  let x_256 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_256;
  let x_258 : f32 = u_xlat15;
  u_xlat3.w = (x_258 * 0.5f);
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec2<f32> = (vec2<f32>(x_261.z, x_261.z) + vec2<f32>(x_263.x, x_263.w));
  let x_266 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_268.x, x_268.x, x_268.x, x_268.x)) + x_272);
  let x_274 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_274.y, x_274.y, x_274.y, x_274.y)) + x_278);
  let x_280 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_280.z, x_280.z, x_280.z, x_280.z)) + x_284);
  let x_287 : vec4<f32> = u_xlat2;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_287.y, x_287.y, x_287.y, x_287.y) * x_289);
  let x_291 : vec4<f32> = u_xlat3;
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_291 * x_292);
  let x_294 : vec4<f32> = u_xlat1;
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_294 * x_295) + x_297);
  let x_299 : vec4<f32> = u_xlat1;
  let x_300 : vec4<f32> = u_xlat2;
  let x_303 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_299 * vec4<f32>(x_300.x, x_300.x, x_300.x, x_300.x)) + x_303);
  let x_305 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_305 * vec4<f32>(x_306.z, x_306.z, x_306.z, x_306.z)) + x_309);
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_311 * x_312) + x_314);
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_316, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_320);
  let x_322 : vec4<f32> = u_xlat0;
  let x_325 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_322 * x_325) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_330);
  let x_332 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_332 * x_333);
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_335, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_339 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_339 * x_340);
  let x_342 : vec4<f32> = u_xlat0;
  let x_346 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_348 : vec3<f32> = (vec3<f32>(x_342.y, x_342.y, x_342.y) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_354 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.x, x_354.x)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_365 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376.w, x_376.w, x_376.w)) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : f32 = u_xlat2.y;
  let x_387 : f32 = u_xlat2.y;
  u_xlat15 = (x_385 * x_387);
  let x_390 : f32 = u_xlat2.x;
  let x_392 : f32 = u_xlat2.x;
  let x_394 : f32 = u_xlat15;
  u_xlat15 = ((x_390 * x_392) + -(x_394));
  let x_397 : vec4<f32> = u_xlat2;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_397.y, x_397.z, x_397.z, x_397.x) * vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.z));
  let x_404 : vec4<f32> = x_20.unity_SHBr;
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_20.unity_SHBg;
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_20.unity_SHBb;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_20.unity_SHC;
  let x_424 : f32 = u_xlat15;
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec3<f32> = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424, x_424, x_424)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_433 : vec4<f32> = u_xlat0;
  let x_435 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

