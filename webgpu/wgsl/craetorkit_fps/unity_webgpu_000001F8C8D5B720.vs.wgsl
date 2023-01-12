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
  let x_138 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_138;
  let x_142 : vec4<f32> = in_POSITION0;
  let x_145 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_147 : vec3<f32> = (vec3<f32>(x_142.y, x_142.y, x_142.y) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_153 : vec4<f32> = in_POSITION0;
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.x, x_153.x, x_153.x)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_164 : vec4<f32> = in_POSITION0;
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.z, x_164.z, x_164.z)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_175 : vec4<f32> = in_POSITION0;
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.w, x_175.w, x_175.w)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec4<f32> = u_xlat1;
  let x_187 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_189 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(x_187));
  let x_190 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_195 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_195;
  let x_199 : vec4<f32> = in_TANGENT0;
  let x_202 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_204 : vec3<f32> = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_210 : vec4<f32> = in_TANGENT0;
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_221 : vec4<f32> = in_TANGENT0;
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.z, x_221.z, x_221.z)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_236 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_236);
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec3<f32> = (vec3<f32>(x_239.x, x_239.x, x_239.x) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = vec3<f32>(x_246.x, x_246.y, x_246.z);
  let x_248 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_252 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_252;
  let x_256 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_256;
  let x_260 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_260, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : vec3<f32> = in_NORMAL0;
  let x_269 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_267, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_273 : vec3<f32> = in_NORMAL0;
  let x_275 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_273, vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_285);
  let x_287 : f32 = u_xlat13;
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = (vec3<f32>(x_287, x_287, x_287) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_296.y, x_296.z, x_296.x) * vec3<f32>(x_298.z, x_298.x, x_298.y));
  let x_301 : vec4<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat2;
  let x_306 : vec3<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_313 : f32 = in_TANGENT0.w;
  let x_316 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat13 = (x_313 * x_316);
  let x_318 : f32 = u_xlat13;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat1;
  let x_326 : vec3<f32> = vec3<f32>(x_325.x, x_325.y, x_325.z);
  let x_327 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : f32 = u_xlat1.y;
  let x_332 : f32 = u_xlat1.y;
  u_xlat13 = (x_330 * x_332);
  let x_335 : f32 = u_xlat1.x;
  let x_337 : f32 = u_xlat1.x;
  let x_339 : f32 = u_xlat13;
  u_xlat13 = ((x_335 * x_337) + -(x_339));
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_342.y, x_342.z, x_342.z, x_342.x) * vec4<f32>(x_344.x, x_344.y, x_344.z, x_344.z));
  let x_348 : vec4<f32> = x_18.unity_SHBr;
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_348, x_349);
  let x_353 : vec4<f32> = x_18.unity_SHBg;
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_353, x_354);
  let x_359 : vec4<f32> = x_18.unity_SHBb;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_359, x_360);
  let x_366 : vec4<f32> = x_18.unity_SHC;
  let x_368 : f32 = u_xlat13;
  let x_371 : vec4<f32> = u_xlat1;
  let x_373 : vec3<f32> = ((vec3<f32>(x_366.x, x_366.y, x_366.z) * vec3<f32>(x_368, x_368, x_368)) + vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_378 : f32 = u_xlat0.y;
  let x_380 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_378 * x_380);
  let x_383 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.w, x_383.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_388.y, x_387.y, x_387.z);
  let x_391 : vec4<f32> = u_xlat0;
  let x_392 : vec2<f32> = vec2<f32>(x_391.z, x_391.w);
  let x_393 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_393.x, x_393.y, x_392.x, x_392.y);
  let x_395 : vec4<f32> = u_xlat1;
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec2<f32> = (vec2<f32>(x_395.z, x_395.z) + vec2<f32>(x_397.x, x_397.w));
  let x_400 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
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

