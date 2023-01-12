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

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_99 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_99;
  let x_104 : vec4<f32> = in_TANGENT0;
  let x_107 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_109 : vec3<f32> = (vec3<f32>(x_104.y, x_104.y, x_104.y) * vec3<f32>(x_107.y, x_107.z, x_107.x));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_115 : vec4<f32> = in_TANGENT0;
  let x_118 : vec4<f32> = u_xlat2;
  let x_120 : vec3<f32> = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.x, x_115.x, x_115.x)) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_126 : vec4<f32> = in_TANGENT0;
  let x_129 : vec4<f32> = u_xlat2;
  let x_131 : vec3<f32> = ((vec3<f32>(x_124.y, x_124.z, x_124.x) * vec3<f32>(x_126.z, x_126.z, x_126.z)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat2;
  let x_148 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_153 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_153;
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_161 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_158, vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_167 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_165, vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_171 : vec3<f32> = in_NORMAL0;
  let x_173 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_171, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = u_xlat3;
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_184);
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_187.x, x_187.x, x_187.x, x_187.x) * vec4<f32>(x_189.x, x_189.y, x_189.z, x_189.z));
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.w, x_196.x, x_196.y));
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat2;
  let x_204 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_199.y, x_199.w, x_199.x) * vec3<f32>(x_201.y, x_201.z, x_201.x)) + -(x_204));
  let x_209 : f32 = in_TANGENT0.w;
  let x_213 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_209 * x_213);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_216.x, x_216.x, x_216.x) * x_218);
  let x_221 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_221;
  let x_224 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_224;
  let x_228 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_228;
  let x_232 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_232;
  let x_235 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_235;
  let x_238 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_238;
  let x_241 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_241;
  let x_244 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_244;
  let x_247 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_247;
  let x_250 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_250;
  let x_254 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_254;
  let x_260 : vec2<f32> = in_TEXCOORD0;
  let x_263 : vec4<f32> = x_17.x_MainTex_ST;
  let x_267 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_260 * vec2<f32>(x_263.x, x_263.y)) + vec2<f32>(x_267.z, x_267.w));
  let x_271 : f32 = u_xlat1.y;
  let x_274 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_271 * x_274);
  let x_278 : f32 = x_17.unity_MatrixV[0i].z;
  let x_280 : f32 = u_xlat1.x;
  let x_283 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_278 * x_280) + x_283);
  let x_287 : f32 = x_17.unity_MatrixV[2i].z;
  let x_289 : f32 = u_xlat1.z;
  let x_292 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_287 * x_289) + x_292);
  let x_296 : f32 = x_17.unity_MatrixV[3i].z;
  let x_298 : f32 = u_xlat1.w;
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_296 * x_298) + x_301);
  let x_307 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_307);
  let x_311 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_316 : vec3<f32> = (vec3<f32>(x_311.y, x_311.y, x_311.y) * vec3<f32>(x_314.x, x_314.y, x_314.w));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_322 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.w) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_333 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat0;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.w) * vec3<f32>(x_333.z, x_333.z, x_333.z)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_344 : vec4<f32> = u_xlat1;
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.w) * vec3<f32>(x_344.w, x_344.w, x_344.w)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat0;
  let x_356 : vec2<f32> = (vec2<f32>(x_352.x, x_352.z) * vec2<f32>(0.5f, 0.5f));
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_356.x, x_357.y, x_356.y, x_357.w);
  let x_360 : f32 = u_xlat0.y;
  let x_362 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_360 * x_362);
  let x_366 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_366;
  let x_369 : f32 = u_xlat0.x;
  u_xlat1.w = (x_369 * 0.5f);
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec2<f32> = (vec2<f32>(x_372.z, x_372.z) + vec2<f32>(x_374.x, x_374.w));
  let x_377 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_380 : f32 = u_xlat3.y;
  let x_382 : f32 = u_xlat3.y;
  u_xlat0.x = (x_380 * x_382);
  let x_386 : f32 = u_xlat3.x;
  let x_388 : f32 = u_xlat3.x;
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_386 * x_388) + -(x_391));
  let x_395 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_395.y, x_395.w, x_395.z, x_395.x) * x_397);
  let x_400 : vec4<f32> = x_17.unity_SHBr;
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_400, x_401);
  let x_405 : vec4<f32> = x_17.unity_SHBg;
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_405, x_406);
  let x_410 : vec4<f32> = x_17.unity_SHBb;
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_410, x_411);
  let x_418 : vec4<f32> = x_17.unity_SHC;
  let x_420 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_420.x, x_420.x, x_420.x)) + vec3<f32>(x_423.x, x_423.y, x_423.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

