struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
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

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_141 : vec2<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec3<f32>;
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
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat0;
  gl_Position = x_80;
  let x_86 : f32 = u_xlat0.z;
  let x_89 : f32 = x_18.x_ProjectionParams.y;
  u_xlat0.x = (x_86 / x_89);
  let x_94 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_94) + 1.0f);
  let x_100 : f32 = u_xlat0.x;
  let x_102 : f32 = x_18.x_ProjectionParams.z;
  u_xlat0.x = (x_100 * x_102);
  let x_106 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_106, 0.0f);
  let x_111 : f32 = u_xlat0.x;
  let x_114 : f32 = x_18.unity_FogParams.x;
  u_xlat0.x = (x_111 * x_114);
  let x_118 : f32 = u_xlat0.x;
  let x_120 : f32 = u_xlat0.x;
  u_xlat0.x = (x_118 * -(x_120));
  let x_126 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = exp2(x_126);
  let x_136 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_136 == 0.0f);
  let x_138 : bool = u_xlatb0;
  if (x_138) {
    let x_146 : vec2<f32> = in_TEXCOORD0;
    x_141 = x_146;
  } else {
    let x_149 : vec2<f32> = in_TEXCOORD1;
    x_141 = x_149;
  }
  let x_150 : vec2<f32> = x_141;
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_150.x, x_150.y, x_151.z, x_151.w);
  let x_154 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_162 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_164 : vec2<f32> = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_165.x, x_165.y, x_164.x, x_164.y);
  let x_167 : vec2<f32> = in_TEXCOORD0;
  let x_170 : vec4<f32> = x_18.x_MainTex_ST;
  let x_174 : vec4<f32> = x_18.x_MainTex_ST;
  let x_176 : vec2<f32> = ((x_167 * vec2<f32>(x_170.x, x_170.y)) + vec2<f32>(x_174.z, x_174.w));
  let x_177 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_179 : vec4<f32> = in_POSITION0;
  let x_182 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_184 : vec3<f32> = (vec3<f32>(x_179.y, x_179.y, x_179.y) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_190 : vec4<f32> = in_POSITION0;
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.x, x_190.x, x_190.x)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_201 : vec4<f32> = in_POSITION0;
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.z, x_201.z, x_201.z)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_212 : vec4<f32> = in_POSITION0;
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.w, x_212.w)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_226 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + -(x_224));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_235);
  let x_237 : f32 = u_xlat12;
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = (vec3<f32>(x_237, x_237, x_237) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_246 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_246;
  let x_249 : vec4<f32> = in_TANGENT0;
  let x_252 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_254 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_260 : vec4<f32> = in_TANGENT0;
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_271 : vec4<f32> = in_TANGENT0;
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_271.z, x_271.z, x_271.z)) + vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_286 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_286);
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat1;
  let x_293 : vec3<f32> = (vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_297 : vec3<f32> = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_304 : vec3<f32> = in_NORMAL0;
  let x_306 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_304, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec3<f32> = in_NORMAL0;
  let x_312 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_310, vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_316 : vec3<f32> = in_NORMAL0;
  let x_318 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_316, vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_322 : vec3<f32> = u_xlat2;
  let x_323 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(x_322, x_323);
  let x_327 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_327);
  let x_330 : vec4<f32> = u_xlat0;
  let x_332 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_330.x, x_330.x, x_330.x) * x_332);
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_335.y, x_335.z, x_335.x) * vec3<f32>(x_337.z, x_337.x, x_337.y));
  let x_340 : vec3<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = u_xlat3;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.y, x_340.z, x_340.x) * vec3<f32>(x_342.z, x_342.x, x_342.y)) + -(x_345));
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_351 : vec3<f32> = u_xlat2;
  let x_352 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_356 : f32 = in_TANGENT0.w;
  let x_359 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat0.x = (x_356 * x_359);
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.x, x_363.x) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_371;
  let x_374 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_374;
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3);
}

