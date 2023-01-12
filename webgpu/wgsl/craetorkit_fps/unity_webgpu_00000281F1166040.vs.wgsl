type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
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
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat16 : f32;
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
  let x_89 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_101 : vec4<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_20.x_MainTex_ST;
  let x_109 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(x_105.x, x_105.y)) + vec2<f32>(x_109.z, x_109.w));
  let x_113 : vec4<f32> = in_TANGENT0;
  let x_116 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_118 : vec3<f32> = (vec3<f32>(x_113.y, x_113.y, x_113.y) * vec3<f32>(x_116.y, x_116.z, x_116.x));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_124 : vec4<f32> = in_TANGENT0;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = ((vec3<f32>(x_122.y, x_122.z, x_122.x) * vec3<f32>(x_124.x, x_124.x, x_124.x)) + vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_135 : vec4<f32> = in_TANGENT0;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = ((vec3<f32>(x_133.y, x_133.z, x_133.x) * vec3<f32>(x_135.z, x_135.z, x_135.z)) + vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_150);
  let x_152 : f32 = u_xlat15;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec3<f32> = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_162 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_162;
  let x_169 : f32 = in_TANGENT0.w;
  let x_173 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_169 * x_173);
  let x_177 : vec3<f32> = in_NORMAL0;
  let x_180 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_177, vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_184 : vec3<f32> = in_NORMAL0;
  let x_186 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_184, vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec3<f32> = in_NORMAL0;
  let x_192 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_190, vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat16;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_204, x_204, x_204, x_204) * vec4<f32>(x_206.x, x_206.y, x_206.z, x_206.z));
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat2;
  let x_214 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.x, x_212.y));
  let x_215 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat2;
  let x_219 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat3;
  let x_225 : vec3<f32> = ((vec3<f32>(x_217.y, x_217.w, x_217.x) * vec3<f32>(x_219.y, x_219.z, x_219.x)) + -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : f32 = u_xlat15;
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : vec3<f32> = (vec3<f32>(x_228, x_228, x_228) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_236;
  let x_239 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_239;
  let x_242 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_242;
  let x_246 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_246;
  let x_250 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_250;
  let x_253 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_253;
  let x_256 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_256;
  let x_259 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_259;
  let x_262 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_262;
  let x_265 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_265;
  let x_268 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_268;
  let x_270 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_270.x, x_270.x, x_270.x, x_270.x)) + x_274);
  let x_276 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_276.y, x_276.y, x_276.y, x_276.y)) + x_280);
  let x_282 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_282.z, x_282.z, x_282.z, x_282.z)) + x_286);
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_289.y, x_289.y, x_289.y, x_289.y) * x_291);
  let x_293 : vec4<f32> = u_xlat3;
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_293 * x_294);
  let x_296 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_296 * x_297) + x_299);
  let x_301 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat2;
  let x_305 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_301 * vec4<f32>(x_302.x, x_302.x, x_302.x, x_302.x)) + x_305);
  let x_307 : vec4<f32> = u_xlat0;
  let x_308 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_307 * vec4<f32>(x_308.w, x_308.w, x_308.z, x_308.w)) + x_311);
  let x_313 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_313 * x_314) + x_316);
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_318, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_322);
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_324 * x_326) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_331);
  let x_333 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_333 * x_334);
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_336, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_340 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_340 * x_341);
  let x_343 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_349 : vec3<f32> = (vec3<f32>(x_343.y, x_343.y, x_343.y) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_355 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.x, x_355.x, x_355.x)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_366 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_377 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.w, x_377.w, x_377.w)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat2.y;
  let x_388 : f32 = u_xlat2.y;
  u_xlat15 = (x_386 * x_388);
  let x_391 : f32 = u_xlat2.x;
  let x_393 : f32 = u_xlat2.x;
  let x_395 : f32 = u_xlat15;
  u_xlat15 = ((x_391 * x_393) + -(x_395));
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_398.y, x_398.w, x_398.z, x_398.x) * x_400);
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
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_434.x, x_434.y, x_434.z) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

