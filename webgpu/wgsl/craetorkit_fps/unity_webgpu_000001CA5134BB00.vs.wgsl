struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_142 : vec2<f32>;
  var u_xlat13 : f32;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
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
  let x_87 : f32 = u_xlat0.z;
  let x_90 : f32 = x_18.x_ProjectionParams.y;
  u_xlat0.x = (x_87 / x_90);
  let x_95 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_95) + 1.0f);
  let x_101 : f32 = u_xlat0.x;
  let x_103 : f32 = x_18.x_ProjectionParams.z;
  u_xlat0.x = (x_101 * x_103);
  let x_107 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_107, 0.0f);
  let x_112 : f32 = u_xlat0.x;
  let x_115 : f32 = x_18.unity_FogParams.x;
  u_xlat0.x = (x_112 * x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_121 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 * -(x_121));
  let x_127 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = exp2(x_127);
  let x_137 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_137 == 0.0f);
  let x_139 : bool = u_xlatb0;
  if (x_139) {
    let x_147 : vec2<f32> = in_TEXCOORD0;
    x_142 = x_147;
  } else {
    let x_150 : vec2<f32> = in_TEXCOORD1;
    x_142 = x_150;
  }
  let x_151 : vec2<f32> = x_142;
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_163 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_165 : vec2<f32> = ((vec2<f32>(x_155.x, x_155.y) * vec2<f32>(x_159.x, x_159.y)) + vec2<f32>(x_163.z, x_163.w));
  let x_166 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_166.x, x_166.y, x_165.x, x_165.y);
  let x_168 : vec2<f32> = in_TEXCOORD0;
  let x_171 : vec4<f32> = x_18.x_MainTex_ST;
  let x_175 : vec4<f32> = x_18.x_MainTex_ST;
  let x_177 : vec2<f32> = ((x_168 * vec2<f32>(x_171.x, x_171.y)) + vec2<f32>(x_175.z, x_175.w));
  let x_178 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
  let x_180 : vec4<f32> = in_POSITION0;
  let x_183 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_185 : vec3<f32> = (vec3<f32>(x_180.y, x_180.y, x_180.y) * vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_189 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_191 : vec4<f32> = in_POSITION0;
  let x_194 : vec4<f32> = u_xlat0;
  let x_196 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_191.x, x_191.x, x_191.x)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_200 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_202 : vec4<f32> = in_POSITION0;
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.z, x_202.z, x_202.z)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_213 : vec4<f32> = in_POSITION0;
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.w, x_213.w, x_213.w)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_227 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + -(x_225));
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_236);
  let x_238 : f32 = u_xlat13;
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (vec3<f32>(x_238, x_238, x_238) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  u_xlat0.w = 0.0f;
  let x_247 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_247.w, x_247.w, x_247.w, x_247.x);
  let x_250 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_250.w, x_250.w, x_250.w, x_250.y);
  let x_254 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_254;
  let x_258 : vec3<f32> = in_NORMAL0;
  let x_261 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_258, vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec3<f32> = in_NORMAL0;
  let x_267 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_265, vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_271 : vec3<f32> = in_NORMAL0;
  let x_273 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_271, vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_283);
  let x_285 : f32 = u_xlat12;
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat0;
  let x_293 : vec3<f32> = vec3<f32>(x_292.x, x_292.y, x_292.z);
  let x_294 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : f32 = u_xlat0.y;
  let x_299 : f32 = u_xlat0.y;
  u_xlat1.x = (x_297 * x_299);
  let x_303 : f32 = u_xlat0.x;
  let x_305 : f32 = u_xlat0.x;
  let x_308 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_303 * x_305) + -(x_308));
  let x_313 : vec4<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_313.y, x_313.z, x_313.z, x_313.x) * vec4<f32>(x_315.x, x_315.y, x_315.z, x_315.z));
  let x_322 : vec4<f32> = x_18.unity_SHBr;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_18.unity_SHBg;
  let x_329 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_328, x_329);
  let x_334 : vec4<f32> = x_18.unity_SHBb;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_334, x_335);
  let x_340 : vec4<f32> = x_18.unity_SHC;
  let x_342 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = u_xlat3;
  let x_346 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.x, x_342.x)) + x_345);
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  u_xlat0.w = 1.0f;
  let x_351 : vec4<f32> = x_18.unity_SHAr;
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_351, x_352);
  let x_356 : vec4<f32> = x_18.unity_SHAg;
  let x_357 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_356, x_357);
  let x_362 : vec4<f32> = x_18.unity_SHAb;
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_362, x_363);
  let x_366 : vec4<f32> = u_xlat1;
  let x_368 : vec4<f32> = u_xlat2;
  let x_370 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = max(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_378 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

