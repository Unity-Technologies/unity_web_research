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
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_87 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_88 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = u_xlat2;
  gl_Position = ((x_87 * vec4<f32>(x_88.w, x_88.w, x_88.w, x_88.w)) + x_91);
  let x_98 : vec4<f32> = in_TEXCOORD0;
  let x_102 : vec4<f32> = x_17.x_MainTex_ST;
  let x_106 : vec4<f32> = x_17.x_MainTex_ST;
  let x_108 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = in_TEXCOORD0;
  let x_115 : vec4<f32> = x_17.x_Normal_ST;
  let x_119 : vec4<f32> = x_17.x_Normal_ST;
  let x_121 : vec2<f32> = ((vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_122.x, x_122.y, x_121.x, x_121.y);
  let x_128 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_128;
  let x_133 : vec4<f32> = in_TANGENT0;
  let x_136 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.y, x_136.z, x_136.x));
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = in_TANGENT0;
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.y, x_142.z, x_142.x) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_155 : vec4<f32> = in_TANGENT0;
  let x_158 : vec4<f32> = u_xlat2;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.y, x_153.z, x_153.x) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_170);
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = u_xlat2;
  let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.x, x_173.x) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_182 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_182;
  let x_187 : vec3<f32> = in_NORMAL0;
  let x_190 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_187, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec3<f32> = in_NORMAL0;
  let x_196 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_194, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_202 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_200, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_213 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_213);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_216.x, x_216.x, x_216.x, x_216.x) * vec4<f32>(x_218.x, x_218.y, x_218.z, x_218.z));
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.x, x_225.y));
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec4<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.y, x_228.w, x_228.x) * vec3<f32>(x_230.y, x_230.z, x_230.x)) + -(x_233));
  let x_238 : f32 = in_TANGENT0.w;
  let x_242 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_238 * x_242);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_245.x, x_245.x, x_245.x) * x_247);
  let x_250 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_250;
  let x_253 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_253;
  let x_257 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_257;
  let x_261 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_261;
  let x_264 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_264;
  let x_267 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_267;
  let x_270 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_270;
  let x_273 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_273;
  let x_276 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_276;
  let x_279 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_279;
  let x_283 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_283;
  let x_285 : f32 = u_xlat1.y;
  let x_288 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_285 * x_288);
  let x_292 : f32 = x_17.unity_MatrixV[0i].z;
  let x_294 : f32 = u_xlat1.x;
  let x_297 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_292 * x_294) + x_297);
  let x_301 : f32 = x_17.unity_MatrixV[2i].z;
  let x_303 : f32 = u_xlat1.z;
  let x_306 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_301 * x_303) + x_306);
  let x_310 : f32 = x_17.unity_MatrixV[3i].z;
  let x_312 : f32 = u_xlat1.w;
  let x_315 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_310 * x_312) + x_315);
  let x_321 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_321);
  let x_325 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_330 : vec3<f32> = (vec3<f32>(x_325.y, x_325.y, x_325.y) * vec3<f32>(x_328.x, x_328.y, x_328.w));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.w) * vec3<f32>(x_336.x, x_336.x, x_336.x)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_347 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.w) * vec3<f32>(x_347.z, x_347.z, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_358 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.w) * vec3<f32>(x_358.w, x_358.w, x_358.w)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat0;
  let x_370 : vec2<f32> = (vec2<f32>(x_366.x, x_366.z) * vec2<f32>(0.5f, 0.5f));
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_370.x, x_371.y, x_370.y, x_371.w);
  let x_374 : f32 = u_xlat0.y;
  let x_376 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_374 * x_376);
  let x_380 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_380;
  let x_383 : f32 = u_xlat0.x;
  u_xlat1.w = (x_383 * 0.5f);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat1;
  let x_390 : vec2<f32> = (vec2<f32>(x_386.z, x_386.z) + vec2<f32>(x_388.x, x_388.w));
  let x_391 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_394 : f32 = u_xlat3.y;
  let x_396 : f32 = u_xlat3.y;
  u_xlat0.x = (x_394 * x_396);
  let x_400 : f32 = u_xlat3.x;
  let x_402 : f32 = u_xlat3.x;
  let x_405 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_400 * x_402) + -(x_405));
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_409.y, x_409.w, x_409.z, x_409.x) * x_411);
  let x_414 : vec4<f32> = x_17.unity_SHBr;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_414, x_415);
  let x_419 : vec4<f32> = x_17.unity_SHBg;
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_419, x_420);
  let x_424 : vec4<f32> = x_17.unity_SHBb;
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_424, x_425);
  let x_432 : vec4<f32> = x_17.unity_SHC;
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.x, x_434.x, x_434.x)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_COLOR0_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5);
}

