struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_49 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.w, x_51.w, x_51.w)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_81 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = x_93;
  let x_100 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_100;
  let x_107 : vec4<f32> = in_TANGENT0;
  let x_110 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_107.y, x_107.y, x_107.y) * vec3<f32>(x_110.y, x_110.z, x_110.x));
  let x_114 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_116 : vec4<f32> = in_TANGENT0;
  let x_119 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.x, x_116.x, x_116.x)) + x_119);
  let x_122 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_124 : vec4<f32> = in_TANGENT0;
  let x_127 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_122.y, x_122.z, x_122.x) * vec3<f32>(x_124.z, x_124.z, x_124.z)) + x_127);
  let x_129 : vec3<f32> = u_xlat3;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_129, x_130);
  let x_134 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_134);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_143 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_143;
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_151 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_148, vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_155 : vec3<f32> = in_NORMAL0;
  let x_157 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_155, vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_163 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_161, vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_167 : vec4<f32> = u_xlat4;
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_174 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_174);
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_177.x, x_177.x, x_177.x, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_183 : vec3<f32> = u_xlat3;
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_183 * vec3<f32>(x_184.w, x_184.x, x_184.y));
  let x_187 : vec4<f32> = u_xlat4;
  let x_189 : vec3<f32> = u_xlat3;
  let x_192 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_187.y, x_187.w, x_187.x) * vec3<f32>(x_189.y, x_189.z, x_189.x)) + -(x_192));
  let x_197 : f32 = in_TANGENT0.w;
  let x_201 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_197 * x_201);
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_209 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_209;
  let x_212 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_212;
  let x_216 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_216;
  let x_220 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_220;
  let x_223 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_223;
  let x_226 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_226;
  let x_229 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_229;
  let x_232 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_232;
  let x_235 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_235;
  let x_238 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_238;
  let x_242 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_242;
  let x_248 : vec2<f32> = in_TEXCOORD0;
  let x_251 : vec4<f32> = x_17.x_MainTex_ST;
  let x_255 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_248 * vec2<f32>(x_251.x, x_251.y)) + vec2<f32>(x_255.z, x_255.w));
  let x_259 : f32 = u_xlat1.y;
  let x_262 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_259 * x_262);
  let x_266 : f32 = x_17.unity_MatrixV[0i].z;
  let x_268 : f32 = u_xlat1.x;
  let x_271 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_266 * x_268) + x_271);
  let x_275 : f32 = x_17.unity_MatrixV[2i].z;
  let x_277 : f32 = u_xlat1.z;
  let x_280 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_275 * x_277) + x_280);
  let x_284 : f32 = x_17.unity_MatrixV[3i].z;
  let x_286 : f32 = u_xlat1.w;
  let x_289 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_284 * x_286) + x_289);
  let x_294 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_294);
  let x_297 : vec4<f32> = u_xlat1;
  let x_300 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_302 : vec3<f32> = (vec3<f32>(x_297.y, x_297.y, x_297.y) * vec3<f32>(x_300.x, x_300.y, x_300.w));
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_308 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.w) * vec3<f32>(x_308.x, x_308.x, x_308.x)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_319 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec3<f32> = ((vec3<f32>(x_317.x, x_317.y, x_317.w) * vec3<f32>(x_319.z, x_319.z, x_319.z)) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_330 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = u_xlat0;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.w) * vec3<f32>(x_330.w, x_330.w, x_330.w)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_339 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_339;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_345 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.y = x_345;
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.w));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : vec4<f32> = u_xlat2;
  let x_363 : vec2<f32> = vec2<f32>(x_362.z, x_362.w);
  let x_364 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_364.x, x_364.y, x_363.x, x_363.y);
  let x_367 : f32 = u_xlat0.y;
  u_xlat0.w = (x_367 * 0.5f);
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : vec2<f32> = (vec2<f32>(x_370.z, x_370.z) + vec2<f32>(x_372.x, x_372.w));
  let x_375 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_378 : f32 = u_xlat4.y;
  let x_380 : f32 = u_xlat4.y;
  u_xlat0.x = (x_378 * x_380);
  let x_384 : f32 = u_xlat4.x;
  let x_386 : f32 = u_xlat4.x;
  let x_389 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_384 * x_386) + -(x_389));
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_393.y, x_393.w, x_393.z, x_393.x) * x_395);
  let x_398 : vec4<f32> = x_17.unity_SHBr;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_398, x_399);
  let x_403 : vec4<f32> = x_17.unity_SHBg;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_403, x_404);
  let x_408 : vec4<f32> = x_17.unity_SHBb;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_408, x_409);
  let x_416 : vec4<f32> = x_17.unity_SHC;
  let x_418 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = u_xlat3;
  vs_TEXCOORD5 = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418.x, x_418.x, x_418.x)) + x_421);
  let x_424 : f32 = u_xlat1.y;
  u_xlat1.w = (x_424 * 0.5f);
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec2<f32> = (vec2<f32>(x_427.z, x_427.z) + vec2<f32>(x_429.x, x_429.w));
  let x_432 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
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
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD5);
}

