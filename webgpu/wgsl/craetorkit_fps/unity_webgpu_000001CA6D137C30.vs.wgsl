struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_43 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_43 + x_46);
  let x_49 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.w, x_51.w, x_51.w)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_64);
  let x_67 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_81 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = x_93;
  let x_99 : vec4<f32> = in_TEXCOORD0;
  let x_103 : vec4<f32> = x_18.x_MainTex_ST;
  let x_107 : vec4<f32> = x_18.x_MainTex_ST;
  let x_109 : vec2<f32> = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_103.x, x_103.y)) + vec2<f32>(x_107.z, x_107.w));
  let x_110 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = in_TEXCOORD0;
  let x_116 : vec4<f32> = x_18.x_Normal_ST;
  let x_120 : vec4<f32> = x_18.x_Normal_ST;
  let x_122 : vec2<f32> = ((vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_116.x, x_116.y)) + vec2<f32>(x_120.z, x_120.w));
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_123.x, x_123.y, x_122.x, x_122.y);
  let x_129 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_129;
  let x_136 : vec4<f32> = in_TANGENT0;
  let x_139 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_139.y, x_139.z, x_139.x));
  let x_143 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_145 : vec4<f32> = in_TANGENT0;
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_143.y, x_143.z, x_143.x) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + x_148);
  let x_151 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_153 : vec4<f32> = in_TANGENT0;
  let x_156 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_151.y, x_151.z, x_151.x) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_159, x_160);
  let x_162 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_162);
  let x_164 : f32 = u_xlat18;
  let x_166 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_164, x_164, x_164) * x_166);
  let x_170 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_170;
  let x_175 : vec3<f32> = in_NORMAL0;
  let x_178 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_175, vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_182 : vec3<f32> = in_NORMAL0;
  let x_184 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_182, vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec3<f32> = in_NORMAL0;
  let x_190 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_188, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_199);
  let x_201 : f32 = u_xlat18;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_201, x_201, x_201, x_201) * vec4<f32>(x_203.x, x_203.y, x_203.z, x_203.z));
  let x_207 : vec3<f32> = u_xlat3;
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_207 * vec3<f32>(x_208.w, x_208.x, x_208.y));
  let x_211 : vec4<f32> = u_xlat4;
  let x_213 : vec3<f32> = u_xlat3;
  let x_216 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_211.y, x_211.w, x_211.x) * vec3<f32>(x_213.y, x_213.z, x_213.x)) + -(x_216));
  let x_221 : f32 = in_TANGENT0.w;
  let x_225 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat18 = (x_221 * x_225);
  let x_227 : f32 = u_xlat18;
  let x_229 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_227, x_227, x_227) * x_229);
  let x_232 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_232;
  let x_235 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_235;
  let x_239 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_239;
  let x_243 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_243;
  let x_246 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_246;
  let x_249 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_249;
  let x_252 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_252;
  let x_255 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_255;
  let x_258 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_258;
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_266 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + -(x_264));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_278 : f32 = u_xlat0.x;
  vs_TEXCOORD6.z = sqrt(x_278);
  let x_283 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_283;
  let x_286 : f32 = u_xlat1.y;
  let x_289 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat0.x = (x_286 * x_289);
  let x_293 : f32 = x_18.unity_MatrixV[0i].z;
  let x_295 : f32 = u_xlat1.x;
  let x_298 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_293 * x_295) + x_298);
  let x_302 : f32 = x_18.unity_MatrixV[2i].z;
  let x_304 : f32 = u_xlat1.z;
  let x_307 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_302 * x_304) + x_307);
  let x_311 : f32 = x_18.unity_MatrixV[3i].z;
  let x_313 : f32 = u_xlat1.w;
  let x_316 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_311 * x_313) + x_316);
  let x_321 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_321);
  let x_325 : f32 = u_xlat2.y;
  let x_327 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_325 * x_327);
  let x_331 : f32 = u_xlat0.x;
  u_xlat0.w = (x_331 * 0.5f);
  let x_335 : vec4<f32> = u_xlat2;
  let x_338 : vec2<f32> = (vec2<f32>(x_335.x, x_335.w) * vec2<f32>(0.5f, 0.5f));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_339.y, x_338.y, x_339.w);
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec2<f32> = (vec2<f32>(x_341.z, x_341.z) + vec2<f32>(x_343.x, x_343.w));
  let x_346 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
  let x_350 : vec4<f32> = u_xlat2;
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(x_355.z, x_355.z));
  let x_358 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  let x_361 : f32 = u_xlat2.w;
  vs_TEXCOORD4.w = x_361;
  let x_363 : vec4<f32> = u_xlat2;
  let x_364 : vec2<f32> = vec2<f32>(x_363.z, x_363.w);
  let x_365 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_365.x, x_365.y, x_364.x, x_364.y);
  let x_369 : f32 = u_xlat2.z;
  vs_TEXCOORD8 = x_369;
  let x_370 : vec4<f32> = in_POSITION0;
  let x_371 : vec2<f32> = vec2<f32>(x_370.x, x_370.z);
  let x_372 : vec3<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec3<f32>(x_371.x, x_371.y, x_372.z);
  let x_375 : f32 = u_xlat4.y;
  let x_377 : f32 = u_xlat4.y;
  u_xlat0.x = (x_375 * x_377);
  let x_381 : f32 = u_xlat4.x;
  let x_383 : f32 = u_xlat4.x;
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_381 * x_383) + -(x_386));
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_390.y, x_390.w, x_390.z, x_390.x) * x_392);
  let x_395 : vec4<f32> = x_18.unity_SHBr;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_395, x_396);
  let x_400 : vec4<f32> = x_18.unity_SHBg;
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_18.unity_SHBb;
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_406, x_407);
  let x_414 : vec4<f32> = x_18.unity_SHC;
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat2;
  vs_TEXCOORD7 = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
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
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD8_1 : f32,
  @location(6)
  vs_TEXCOORD7_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD8, vs_TEXCOORD7);
}

