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
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_96 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat3 : vec3<f32>;
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
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_52);
  let x_55 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_62 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_70 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_69 * vec4<f32>(x_70.w, x_70.w, x_70.w, x_70.w)) + x_73);
  let x_81 : vec4<f32> = u_xlat0;
  gl_Position = x_81;
  let x_90 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_90 == 0.0f);
  let x_93 : bool = u_xlatb1;
  if (x_93) {
    let x_101 : vec2<f32> = in_TEXCOORD0;
    x_96 = x_101;
  } else {
    let x_104 : vec2<f32> = in_TEXCOORD1;
    x_96 = x_104;
  }
  let x_105 : vec2<f32> = x_96;
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_105.x, x_105.y, x_106.z, x_106.w);
  let x_109 : vec4<f32> = u_xlat1;
  let x_113 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_117 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_119 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_113.x, x_113.y)) + vec2<f32>(x_117.z, x_117.w));
  let x_120 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_120.x, x_120.y, x_119.x, x_119.y);
  let x_122 : vec2<f32> = in_TEXCOORD0;
  let x_125 : vec4<f32> = x_18.x_MainTex_ST;
  let x_129 : vec4<f32> = x_18.x_MainTex_ST;
  let x_131 : vec2<f32> = ((x_122 * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(x_129.z, x_129.w));
  let x_132 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_138 : vec4<f32> = in_POSITION0;
  let x_141 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_143 : vec3<f32> = (vec3<f32>(x_138.y, x_138.y, x_138.y) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_149 : vec4<f32> = in_POSITION0;
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec3<f32> = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.x, x_149.x, x_149.x)) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_160 : vec4<f32> = in_POSITION0;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.z, x_160.z, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_171 : vec4<f32> = in_POSITION0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.w, x_171.w, x_171.w)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_183 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_185 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + -(x_183));
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_192 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_192;
  let x_196 : vec4<f32> = in_TANGENT0;
  let x_199 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_201 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_207 : vec4<f32> = in_TANGENT0;
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec3<f32> = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_218 : vec4<f32> = in_TANGENT0;
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.z, x_218.z, x_218.z)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_233 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_233);
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = (vec3<f32>(x_236.x, x_236.x, x_236.x) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat2;
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_249 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_249;
  let x_254 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_254;
  let x_258 : vec3<f32> = in_NORMAL0;
  let x_261 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_258, vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec3<f32> = in_NORMAL0;
  let x_267 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_265, vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_271 : vec3<f32> = in_NORMAL0;
  let x_273 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_271, vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_283);
  let x_285 : f32 = u_xlat13;
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec3<f32> = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_294 : vec4<f32> = u_xlat2;
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y));
  let x_299 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = u_xlat3;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_311 : f32 = in_TANGENT0.w;
  let x_314 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat13 = (x_311 * x_314);
  let x_316 : f32 = u_xlat13;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_324 : vec3<f32> = vec3<f32>(x_323.x, x_323.y, x_323.z);
  let x_325 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : f32 = u_xlat1.y;
  let x_330 : f32 = u_xlat1.y;
  u_xlat13 = (x_328 * x_330);
  let x_333 : f32 = u_xlat1.x;
  let x_335 : f32 = u_xlat1.x;
  let x_337 : f32 = u_xlat13;
  u_xlat13 = ((x_333 * x_335) + -(x_337));
  let x_340 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_340.y, x_340.z, x_340.z, x_340.x) * vec4<f32>(x_342.x, x_342.y, x_342.z, x_342.z));
  let x_346 : vec4<f32> = x_18.unity_SHBr;
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_346, x_347);
  let x_351 : vec4<f32> = x_18.unity_SHBg;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_351, x_352);
  let x_357 : vec4<f32> = x_18.unity_SHBb;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_357, x_358);
  let x_364 : vec4<f32> = x_18.unity_SHC;
  let x_366 : f32 = u_xlat13;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366, x_366, x_366)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_376 : f32 = u_xlat0.y;
  let x_378 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_376 * x_378);
  let x_381 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.w, x_381.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_385.z);
  let x_389 : vec4<f32> = u_xlat0;
  let x_390 : vec2<f32> = vec2<f32>(x_389.z, x_389.w);
  let x_391 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_391.x, x_391.y, x_390.x, x_390.y);
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat1;
  let x_397 : vec2<f32> = (vec2<f32>(x_393.z, x_393.z) + vec2<f32>(x_395.x, x_395.w));
  let x_398 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
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
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7);
}

