diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(32) */
  x_ScreenParams : vec4<f32>,
  /* @offset(48) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(64) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_71 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat2 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_126 : UnityPerDraw;

var<private> u_xlatu0 : vec3<u32>;

var<private> u_xlatu4 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati2 : i32;

var<private> u_xlatu2 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlatb4 : bool;

var<private> u_xlat4 : f32;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> SV_TARGET0 : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_107 : f32;
  var x_133 : f32;
  var x_146 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_325 : f32;
  var x_337 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_65 : vec3<f32> = vs_INTERP1;
  let x_75 : vec3<f32> = x_71.x_WorldSpaceCameraPos;
  let x_76 : vec3<f32> = (-(x_65) + x_75);
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_86);
  let x_88 : f32 = u_xlat6;
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = (vec3<f32>(x_88, x_88, x_88) * vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_101 : f32 = x_71.unity_OrthoParams.w;
  u_xlatb6 = (x_101 == 0.0f);
  let x_105 : bool = u_xlatb6;
  if (x_105) {
    let x_112 : f32 = u_xlat0.y;
    x_107 = x_112;
  } else {
    let x_117 : f32 = x_71.unity_MatrixV[1i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat2 = x_118;
  let x_121 : f32 = u_xlat2;
  let x_129 : vec4<f32> = x_126.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_121, x_121, x_121) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : bool = u_xlatb6;
  if (x_132) {
    let x_138 : f32 = u_xlat0.x;
    x_133 = x_138;
  } else {
    let x_142 : f32 = x_71.unity_MatrixV[0i].z;
    x_133 = x_142;
  }
  let x_143 : f32 = x_133;
  u_xlat0.x = x_143;
  let x_145 : bool = u_xlatb6;
  if (x_145) {
    let x_150 : f32 = u_xlat0.z;
    x_146 = x_150;
  } else {
    let x_154 : f32 = x_71.unity_MatrixV[2i].z;
    x_146 = x_154;
  }
  let x_155 : f32 = x_146;
  u_xlat2 = x_155;
  let x_157 : vec4<f32> = x_126.unity_WorldToObject[0i];
  let x_159 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = u_xlat1;
  let x_163 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + x_162);
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_164.y, x_163.y, x_163.z);
  let x_167 : vec4<f32> = x_126.unity_WorldToObject[2i];
  let x_169 : f32 = u_xlat2;
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169, x_169, x_169)) + vec3<f32>(x_172.x, x_172.z, x_172.w));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_182);
  let x_184 : f32 = u_xlat6;
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_71.x_ScreenParams;
  let x_197 : vec3<f32> = (abs(vec3<f32>(x_191.x, x_191.y, x_191.z)) * vec3<f32>(x_195.x, x_195.y, x_195.x));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_203 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_209 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_209 * 1025u);
  let x_213 : u32 = u_xlatu4;
  u_xlatu6 = (x_213 >> 6u);
  let x_218 : u32 = u_xlatu6;
  let x_219 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_218 ^ x_219));
  let x_222 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_222) * 9u);
  let x_226 : u32 = u_xlatu4;
  u_xlatu6 = (x_226 >> 11u);
  let x_229 : u32 = u_xlatu6;
  let x_230 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_229 ^ x_230));
  let x_233 : i32 = u_xlati4;
  u_xlati4 = (x_233 * 32769i);
  let x_237 : i32 = u_xlati4;
  let x_240 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_237) ^ x_240));
  let x_244 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_244) * 1025u);
  let x_247 : u32 = u_xlatu2;
  u_xlatu4 = (x_247 >> 6u);
  let x_249 : u32 = u_xlatu4;
  let x_250 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_249 ^ x_250));
  let x_253 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_253) * 9u);
  let x_256 : u32 = u_xlatu2;
  u_xlatu4 = (x_256 >> 11u);
  let x_258 : u32 = u_xlatu4;
  let x_259 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_258 ^ x_259));
  let x_262 : i32 = u_xlati2;
  u_xlati2 = (x_262 * 32769i);
  let x_265 : i32 = u_xlati2;
  let x_268 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_265) ^ x_268));
  let x_271 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_271) * 1025u);
  let x_276 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_276 >> 6u);
  let x_278 : u32 = u_xlatu2;
  let x_280 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_278 ^ x_280));
  let x_283 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_283) * 9u);
  let x_288 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_288 >> 11u);
  let x_290 : u32 = u_xlatu2;
  let x_292 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_290 ^ x_292));
  let x_295 : i32 = u_xlati0;
  u_xlati0 = (x_295 * 32769i);
  param = 1065353216i;
  let x_301 : i32 = u_xlati0;
  param_1 = x_301;
  param_2 = 0i;
  param_3 = 23i;
  let x_304 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_304);
  let x_308 : f32 = u_xlat0.x;
  u_xlat0.x = (x_308 + -1.0f);
  let x_313 : f32 = u_xlat0.x;
  u_xlat2 = (-(x_313) + 1.0f);
  let x_318 : f32 = x_126.unity_LODFade.x;
  u_xlatb4 = (x_318 < 0.0f);
  let x_321 : f32 = x_126.unity_LODFade.x;
  u_xlat6 = (x_321 + 1.0f);
  let x_324 : bool = u_xlatb4;
  if (x_324) {
    let x_328 : f32 = u_xlat6;
    x_325 = x_328;
  } else {
    let x_331 : f32 = x_126.unity_LODFade.x;
    x_325 = x_331;
  }
  let x_332 : f32 = x_325;
  u_xlat4 = x_332;
  let x_334 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_334);
  let x_336 : bool = u_xlatb6;
  if (x_336) {
    let x_341 : f32 = u_xlat0.x;
    x_337 = x_341;
  } else {
    let x_343 : f32 = u_xlat2;
    x_337 = x_343;
  }
  let x_344 : f32 = x_337;
  u_xlat0.x = x_344;
  let x_346 : f32 = u_xlat4;
  let x_350 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_346 * 2.0f) + -(x_350));
  let x_365 : vec4<f32> = vs_INTERP0;
  let x_368 : f32 = x_71.x_GlobalMipBias.x;
  let x_369 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_365.x, x_365.y), x_368);
  u_xlat2 = x_369.w;
  let x_371 : f32 = u_xlat2;
  let x_373 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_371 * x_373) + -0.40000000596046447754f);
  let x_380 : f32 = u_xlat0.x;
  u_xlatb0 = (x_380 < 0.0f);
  let x_382 : bool = u_xlatb0;
  if (((select(0i, 1i, x_382) * -1i) != 0i)) {
    discard;
  }
  let x_392 : vec4<f32> = hlslcc_FragCoord;
  SV_TARGET0 = vec4<f32>(x_392.z, x_392.z, x_392.z, x_392.z);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_TARGET0);
}


