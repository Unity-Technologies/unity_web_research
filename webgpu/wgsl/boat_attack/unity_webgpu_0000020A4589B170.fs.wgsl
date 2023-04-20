diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat12 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb33 : bool;

@group(0) @binding(5) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat33 : f32;

@group(0) @binding(4) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb23 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat23 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlati33 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu14 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati14 : i32;

@group(1) @binding(1) var<uniform> x_1253 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlati39 : i32;

var<private> u_xlatb40 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat40 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb42 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var txVec0 : vec3<f32>;
  var x_900 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1385 : f32;
  var x_1395 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb11 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb11;
  u_xlat11 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat11;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb11 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat22 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb11;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat22;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat11 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat12.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat22;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat22 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat22;
  u_xlatb33 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat22;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat22;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat12.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat22;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat22 = x_207;
  let x_208 : bool = u_xlatb33;
  if (x_208) {
    let x_213 : f32 = u_xlat12.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat22;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat22 = x_216;
  let x_217 : f32 = u_xlat22;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat11;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat33;
  u_xlat33 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat33;
  u_xlat33 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_319);
  let x_321 : f32 = u_xlat33;
  u_xlat33 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb23.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb23.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb23.x;
  u_xlat23.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb23.y;
  u_xlat23.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat23.y;
  let x_367 : f32 = u_xlat23.x;
  u_xlat23.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat23;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat12;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat33;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat33;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb33 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat35;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb33;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb33;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb33;
  if (x_488) {
    let x_493 : f32 = u_xlat3.z;
    x_489 = x_493;
  } else {
    let x_497 : f32 = x_29.unity_MatrixV[2i].z;
    x_489 = x_497;
  }
  let x_498 : f32 = x_489;
  u_xlat4.z = x_498;
  let x_500 : vec3<f32> = vs_INTERP7;
  let x_511 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres0;
  let x_514 : vec3<f32> = (x_500 + -(vec3<f32>(x_511.x, x_511.y, x_511.z)));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : vec3<f32> = vs_INTERP7;
  let x_520 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres1;
  let x_523 : vec3<f32> = (x_518 + -(vec3<f32>(x_520.x, x_520.y, x_520.z)));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : vec3<f32> = vs_INTERP7;
  let x_529 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres2;
  let x_532 : vec3<f32> = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : vec3<f32> = vs_INTERP7;
  let x_538 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_541 : vec3<f32> = (x_536 + -(vec3<f32>(x_538.x, x_538.y, x_538.z)));
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_571 : vec4<f32> = u_xlat3;
  let x_573 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_571 < x_573);
  let x_576 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_588);
  let x_592 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_592);
  let x_597 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_597);
  let x_601 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_601);
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : vec4<f32> = u_xlat5;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(x_606.y, x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat3;
  let x_614 : vec3<f32> = max(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_615 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_615.x, x_614.x, x_614.y, x_614.z);
  let x_617 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_617, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_622 : f32 = u_xlat33;
  u_xlat33 = (-(x_622) + 4.0f);
  let x_627 : f32 = u_xlat33;
  u_xlatu33 = u32(x_627);
  let x_631 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_631) << bitcast<u32>(2i));
  let x_634 : vec3<f32> = vs_INTERP7;
  let x_636 : i32 = u_xlati33;
  let x_639 : i32 = u_xlati33;
  let x_643 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_636 + 1i) / 4i)][((x_639 + 1i) % 4i)];
  let x_645 : vec3<f32> = (vec3<f32>(x_634.y, x_634.y, x_634.y) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : i32 = u_xlati33;
  let x_650 : i32 = u_xlati33;
  let x_653 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_648 / 4i)][(x_650 % 4i)];
  let x_655 : vec3<f32> = vs_INTERP7;
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.x, x_655.x)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : i32 = u_xlati33;
  let x_666 : i32 = u_xlati33;
  let x_670 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_663 + 2i) / 4i)][((x_666 + 2i) % 4i)];
  let x_672 : vec3<f32> = vs_INTERP7;
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.z, x_672.z, x_672.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : i32 = u_xlati33;
  let x_685 : i32 = u_xlati33;
  let x_689 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_682 + 3i) / 4i)][((x_685 + 3i) % 4i)];
  let x_691 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  u_xlat1.w = 1.0f;
  let x_697 : vec4<f32> = x_349.unity_SHAr;
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_697, x_698);
  let x_703 : vec4<f32> = x_349.unity_SHAg;
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_703, x_704);
  let x_709 : vec4<f32> = x_349.unity_SHAb;
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_709, x_710);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_713.y, x_713.z, x_713.z, x_713.x) * vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.z));
  let x_720 : vec4<f32> = x_349.unity_SHBr;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_720, x_721);
  let x_726 : vec4<f32> = x_349.unity_SHBg;
  let x_727 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_726, x_727);
  let x_732 : vec4<f32> = x_349.unity_SHBb;
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_732, x_733);
  let x_737 : f32 = u_xlat1.y;
  let x_739 : f32 = u_xlat1.y;
  u_xlat33 = (x_737 * x_739);
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = u_xlat1.x;
  let x_746 : f32 = u_xlat33;
  u_xlat33 = ((x_742 * x_744) + -(x_746));
  let x_751 : vec4<f32> = x_349.unity_SHC;
  let x_753 : f32 = u_xlat33;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753, x_753, x_753)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : vec4<f32> = u_xlat6;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat5;
  let x_770 : vec3<f32> = max(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_771 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat2;
  let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_781 : vec2<f32> = clamp(vec2<f32>(x_777.x, x_777.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_782 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_785 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_785) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_791 : f32 = u_xlat33;
  u_xlat34 = (-(x_791) + 1.0f);
  let x_794 : f32 = u_xlat33;
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec3<f32> = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat2;
  let x_810 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_819 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat33;
  let x_823 : f32 = u_xlat33;
  u_xlat2.x = (x_822 * x_823);
  let x_827 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_827, 0.0078125f);
  let x_832 : f32 = u_xlat2.x;
  let x_834 : f32 = u_xlat2.x;
  u_xlat35 = (x_832 * x_834);
  let x_836 : f32 = u_xlat34;
  let x_838 : f32 = u_xlat2.y;
  u_xlat34 = (x_836 + x_838);
  let x_840 : f32 = u_xlat34;
  u_xlat34 = min(x_840, 1.0f);
  let x_844 : f32 = u_xlat2.x;
  u_xlat13 = ((x_844 * 4.0f) + 2.0f);
  let x_849 : f32 = u_xlat2.z;
  u_xlat24 = min(x_849, 1.0f);
  let x_853 : vec4<f32> = u_xlat3;
  let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
  let x_856 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_854.x, x_854.y, x_856);
  let x_868 : vec3<f32> = txVec0;
  let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_868.xy, x_868.z);
  u_xlat3.x = x_870;
  let x_875 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat3.x;
  let x_882 : f32 = x_508.x_MainLightShadowParams.x;
  let x_885 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_880 * x_882) + x_885);
  let x_890 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_890);
  let x_894 : f32 = u_xlat3.z;
  u_xlatb25 = (x_894 >= 1.0f);
  let x_896 : bool = u_xlatb25;
  let x_897 : bool = u_xlatb14;
  u_xlatb14 = (x_896 | x_897);
  let x_899 : bool = u_xlatb14;
  if (x_899) {
    x_900 = 1.0f;
  } else {
    let x_905 : f32 = u_xlat3.x;
    x_900 = x_905;
  }
  let x_906 : f32 = x_900;
  u_xlat3.x = x_906;
  let x_908 : vec3<f32> = vs_INTERP7;
  let x_910 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat14 = (x_908 + -(x_910));
  let x_913 : vec3<f32> = u_xlat14;
  let x_914 : vec3<f32> = u_xlat14;
  u_xlat14.x = dot(x_913, x_914);
  let x_919 : f32 = u_xlat14.x;
  let x_921 : f32 = x_508.x_MainLightShadowParams.z;
  let x_924 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat25 = ((x_919 * x_921) + x_924);
  let x_926 : f32 = u_xlat25;
  u_xlat25 = clamp(x_926, 0.0f, 1.0f);
  let x_930 : f32 = u_xlat3.x;
  u_xlat36 = (-(x_930) + 1.0f);
  let x_933 : f32 = u_xlat25;
  let x_934 : f32 = u_xlat36;
  let x_937 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_933 * x_934) + x_937);
  let x_940 : vec3<f32> = u_xlat4;
  let x_942 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(-(x_940), vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : f32 = u_xlat25;
  let x_946 : f32 = u_xlat25;
  u_xlat25 = (x_945 + x_946);
  let x_948 : vec4<f32> = u_xlat1;
  let x_950 : f32 = u_xlat25;
  let x_954 : vec3<f32> = u_xlat4;
  let x_956 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * -(vec3<f32>(x_950, x_950, x_950))) + -(x_954));
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), x_961);
  let x_963 : f32 = u_xlat25;
  u_xlat25 = clamp(x_963, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat25;
  u_xlat25 = (-(x_965) + 1.0f);
  let x_968 : f32 = u_xlat25;
  let x_969 : f32 = u_xlat25;
  u_xlat25 = (x_968 * x_969);
  let x_971 : f32 = u_xlat25;
  let x_972 : f32 = u_xlat25;
  u_xlat25 = (x_971 * x_972);
  let x_974 : f32 = u_xlat33;
  u_xlat36 = ((-(x_974) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_980 : f32 = u_xlat33;
  let x_981 : f32 = u_xlat36;
  u_xlat33 = (x_980 * x_981);
  let x_983 : f32 = u_xlat33;
  u_xlat33 = (x_983 * 6.0f);
  let x_993 : vec4<f32> = u_xlat7;
  let x_995 : f32 = u_xlat33;
  let x_996 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_993.x, x_993.y, x_993.z), x_995);
  u_xlat7 = x_996;
  let x_998 : f32 = u_xlat7.w;
  u_xlat33 = (x_998 + -1.0f);
  let x_1001 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1002 : f32 = u_xlat33;
  u_xlat33 = ((x_1001 * x_1002) + 1.0f);
  let x_1005 : f32 = u_xlat33;
  u_xlat33 = max(x_1005, 0.0f);
  let x_1007 : f32 = u_xlat33;
  u_xlat33 = log2(x_1007);
  let x_1009 : f32 = u_xlat33;
  let x_1011 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_1009 * x_1011);
  let x_1013 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1013);
  let x_1015 : f32 = u_xlat33;
  let x_1017 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_1015 * x_1017);
  let x_1019 : vec4<f32> = u_xlat7;
  let x_1021 : f32 = u_xlat33;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1021, x_1021, x_1021));
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1027 : vec4<f32> = u_xlat2;
  let x_1029 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_1027.x, x_1027.x) * vec2<f32>(x_1029.x, x_1029.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1035 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_1035);
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1041 : f32 = u_xlat34;
  u_xlat19 = (-(vec3<f32>(x_1038.x, x_1038.y, x_1038.z)) + vec3<f32>(x_1041, x_1041, x_1041));
  let x_1044 : f32 = u_xlat25;
  let x_1046 : vec3<f32> = u_xlat19;
  let x_1048 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1044, x_1044, x_1044) * x_1046) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : f32 = u_xlat33;
  let x_1053 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1051, x_1051, x_1051) * x_1053);
  let x_1055 : vec4<f32> = u_xlat7;
  let x_1057 : vec3<f32> = u_xlat19;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * x_1057);
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat5;
  let x_1063 : vec4<f32> = u_xlat6;
  let x_1066 : vec4<f32> = u_xlat7;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1072 : f32 = u_xlat3.x;
  let x_1074 : f32 = x_349.unity_LightData.z;
  u_xlat33 = (x_1072 * x_1074);
  let x_1076 : vec4<f32> = u_xlat1;
  let x_1079 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1082, 0.0f, 1.0f);
  let x_1084 : f32 = u_xlat33;
  let x_1085 : f32 = u_xlat34;
  u_xlat33 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat33;
  let x_1090 : vec4<f32> = x_29.x_MainLightColor;
  let x_1092 : vec3<f32> = (vec3<f32>(x_1087, x_1087, x_1087) * vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1092.x, x_1093.y, x_1092.y, x_1092.z);
  let x_1095 : vec3<f32> = u_xlat4;
  let x_1097 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1099 : vec3<f32> = (x_1095 + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat7;
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : f32 = u_xlat33;
  u_xlat33 = max(x_1107, 1.17549435e-38f);
  let x_1110 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1110);
  let x_1112 : f32 = u_xlat33;
  let x_1114 : vec4<f32> = u_xlat7;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec4<f32> = u_xlat1;
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1124, 0.0f, 1.0f);
  let x_1127 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1129 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1127.x, x_1127.y, x_1127.z), vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1132, 0.0f, 1.0f);
  let x_1134 : f32 = u_xlat33;
  let x_1135 : f32 = u_xlat33;
  u_xlat33 = (x_1134 * x_1135);
  let x_1137 : f32 = u_xlat33;
  let x_1139 : f32 = u_xlat8.x;
  u_xlat33 = ((x_1137 * x_1139) + 1.00001001358032226562f);
  let x_1143 : f32 = u_xlat34;
  let x_1144 : f32 = u_xlat34;
  u_xlat34 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat33;
  let x_1147 : f32 = u_xlat33;
  u_xlat33 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat34;
  u_xlat34 = max(x_1149, 0.10000000149011611938f);
  let x_1152 : f32 = u_xlat33;
  let x_1153 : f32 = u_xlat34;
  u_xlat33 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat13;
  let x_1156 : f32 = u_xlat33;
  u_xlat33 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat35;
  let x_1159 : f32 = u_xlat33;
  u_xlat33 = (x_1158 / x_1159);
  let x_1161 : vec4<f32> = u_xlat0;
  let x_1163 : f32 = u_xlat33;
  let x_1166 : vec4<f32> = u_xlat6;
  let x_1168 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * vec3<f32>(x_1163, x_1163, x_1163)) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat3;
  let x_1173 : vec4<f32> = u_xlat7;
  let x_1175 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.z, x_1171.w) * vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1175.z);
  let x_1179 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1181 : f32 = x_349.unity_LightData.y;
  u_xlat33 = min(x_1179, x_1181);
  let x_1183 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1183));
  let x_1187 : f32 = u_xlat14.x;
  let x_1190 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_1193 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_1187 * x_1190) + x_1193);
  let x_1195 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1195, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1207 : u32 = u_xlatu_loop_1;
    let x_1208 : u32 = u_xlatu33;
    if ((x_1207 < x_1208)) {
    } else {
      break;
    }
    let x_1211 : u32 = u_xlatu_loop_1;
    u_xlatu14 = (x_1211 >> 2u);
    let x_1214 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1214 & 3u));
    let x_1217 : u32 = u_xlatu14;
    let x_1220 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1217)];
    let x_1230 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1235 : vec4<u32> = indexable[x_1230];
    u_xlat14.x = dot(x_1220, bitcast<vec4<f32>>(x_1235));
    let x_1241 : f32 = u_xlat14.x;
    u_xlati14 = i32(x_1241);
    let x_1243 : vec3<f32> = vs_INTERP7;
    let x_1254 : i32 = u_xlati14;
    let x_1256 : vec4<f32> = x_1253.x_AdditionalLightsPosition[x_1254];
    let x_1259 : i32 = u_xlati14;
    let x_1261 : vec4<f32> = x_1253.x_AdditionalLightsPosition[x_1259];
    u_xlat19 = ((-(x_1243) * vec3<f32>(x_1256.w, x_1256.w, x_1256.w)) + vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
    let x_1265 : vec3<f32> = u_xlat19;
    let x_1266 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1265, x_1266);
    let x_1268 : f32 = u_xlat37;
    u_xlat37 = max(x_1268, 0.00006103515625f);
    let x_1272 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_1272);
    let x_1275 : f32 = u_xlat38;
    let x_1277 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1275, x_1275, x_1275) * x_1277);
    let x_1280 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_1280);
    let x_1282 : f32 = u_xlat37;
    let x_1283 : i32 = u_xlati14;
    let x_1285 : f32 = x_1253.x_AdditionalLightsAttenuation[x_1283].x;
    u_xlat37 = (x_1282 * x_1285);
    let x_1287 : f32 = u_xlat37;
    let x_1289 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1287) * x_1289) + 1.0f);
    let x_1292 : f32 = u_xlat37;
    u_xlat37 = max(x_1292, 0.0f);
    let x_1294 : f32 = u_xlat37;
    let x_1295 : f32 = u_xlat37;
    u_xlat37 = (x_1294 * x_1295);
    let x_1297 : f32 = u_xlat37;
    let x_1298 : f32 = u_xlat39;
    u_xlat37 = (x_1297 * x_1298);
    let x_1300 : i32 = u_xlati14;
    let x_1302 : vec4<f32> = x_1253.x_AdditionalLightsSpotDir[x_1300];
    let x_1304 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1302.x, x_1302.y, x_1302.z), x_1304);
    let x_1306 : f32 = u_xlat39;
    let x_1307 : i32 = u_xlati14;
    let x_1309 : f32 = x_1253.x_AdditionalLightsAttenuation[x_1307].z;
    let x_1311 : i32 = u_xlati14;
    let x_1313 : f32 = x_1253.x_AdditionalLightsAttenuation[x_1311].w;
    u_xlat39 = ((x_1306 * x_1309) + x_1313);
    let x_1315 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1315, 0.0f, 1.0f);
    let x_1317 : f32 = u_xlat39;
    let x_1318 : f32 = u_xlat39;
    u_xlat39 = (x_1317 * x_1318);
    let x_1320 : f32 = u_xlat37;
    let x_1321 : f32 = u_xlat39;
    u_xlat37 = (x_1320 * x_1321);
    let x_1325 : i32 = u_xlati14;
    let x_1327 : f32 = x_508.x_AdditionalShadowParams[x_1325].w;
    u_xlati39 = i32(x_1327);
    let x_1330 : i32 = u_xlati39;
    u_xlatb40 = (x_1330 >= 0i);
    let x_1332 : bool = u_xlatb40;
    if (x_1332) {
      let x_1336 : i32 = u_xlati14;
      let x_1338 : f32 = x_508.x_AdditionalShadowParams[x_1336].z;
      u_xlatb40 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1338, x_1338, x_1338, x_1338))));
      let x_1342 : bool = u_xlatb40;
      if (x_1342) {
        let x_1346 : vec3<f32> = u_xlat9;
        let x_1349 : vec3<f32> = u_xlat9;
        let x_1352 : vec4<bool> = (abs(vec4<f32>(x_1346.z, x_1346.z, x_1346.y, x_1346.z)) >= abs(vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.x)));
        let x_1354 : vec3<bool> = vec3<bool>(x_1352.x, x_1352.y, x_1352.z);
        let x_1355 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
        let x_1358 : bool = u_xlatb10.y;
        let x_1360 : bool = u_xlatb10.x;
        u_xlatb40 = (x_1358 & x_1360);
        let x_1362 : vec3<f32> = u_xlat9;
        let x_1365 : vec4<bool> = (-(vec4<f32>(x_1362.z, x_1362.y, x_1362.z, x_1362.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1366 : vec3<bool> = vec3<bool>(x_1365.x, x_1365.y, x_1365.w);
        let x_1367 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1366.x, x_1366.y, x_1367.z, x_1366.z);
        let x_1371 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1371);
        let x_1376 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1376);
        let x_1381 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1381);
        let x_1384 : bool = u_xlatb10.z;
        if (x_1384) {
          let x_1389 : f32 = u_xlat10.y;
          x_1385 = x_1389;
        } else {
          let x_1391 : f32 = u_xlat42;
          x_1385 = x_1391;
        }
        let x_1392 : f32 = x_1385;
        u_xlat42 = x_1392;
        let x_1394 : bool = u_xlatb40;
        if (x_1394) {
          let x_1399 : f32 = u_xlat10.x;
          x_1395 = x_1399;
        } else {
          let x_1401 : f32 = u_xlat42;
          x_1395 = x_1401;
        }
        let x_1402 : f32 = x_1395;
        u_xlat40 = x_1402;
        let x_1403 : i32 = u_xlati14;
        let x_1405 : f32 = x_508.x_AdditionalShadowParams[x_1403].w;
        u_xlat42 = trunc(x_1405);
        let x_1407 : f32 = u_xlat40;
        let x_1408 : f32 = u_xlat42;
        u_xlat40 = (x_1407 + x_1408);
        let x_1410 : f32 = u_xlat40;
        u_xlati39 = i32(x_1410);
      }
      let x_1412 : i32 = u_xlati39;
      u_xlati39 = (x_1412 << bitcast<u32>(2i));
      let x_1414 : vec3<f32> = vs_INTERP7;
      let x_1417 : i32 = u_xlati39;
      let x_1420 : i32 = u_xlati39;
      let x_1424 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1417 + 1i) / 4i)][((x_1420 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1414.y, x_1414.y, x_1414.y, x_1414.y) * x_1424);
      let x_1426 : i32 = u_xlati39;
      let x_1428 : i32 = u_xlati39;
      let x_1431 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_1426 / 4i)][(x_1428 % 4i)];
      let x_1432 : vec3<f32> = vs_INTERP7;
      let x_1435 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1431 * vec4<f32>(x_1432.x, x_1432.x, x_1432.x, x_1432.x)) + x_1435);
      let x_1437 : i32 = u_xlati39;
      let x_1440 : i32 = u_xlati39;
      let x_1444 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1437 + 2i) / 4i)][((x_1440 + 2i) % 4i)];
      let x_1445 : vec3<f32> = vs_INTERP7;
      let x_1448 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1444 * vec4<f32>(x_1445.z, x_1445.z, x_1445.z, x_1445.z)) + x_1448);
      let x_1450 : vec4<f32> = u_xlat10;
      let x_1451 : i32 = u_xlati39;
      let x_1454 : i32 = u_xlati39;
      let x_1458 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1451 + 3i) / 4i)][((x_1454 + 3i) % 4i)];
      u_xlat10 = (x_1450 + x_1458);
      let x_1460 : vec4<f32> = u_xlat10;
      let x_1462 : vec4<f32> = u_xlat10;
      let x_1464 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) / vec3<f32>(x_1462.w, x_1462.w, x_1462.w));
      let x_1465 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
      let x_1468 : vec4<f32> = u_xlat10;
      let x_1469 : vec2<f32> = vec2<f32>(x_1468.x, x_1468.y);
      let x_1471 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
      let x_1479 : vec3<f32> = txVec1;
      let x_1481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
      u_xlat39 = x_1481;
      let x_1482 : i32 = u_xlati14;
      let x_1484 : f32 = x_508.x_AdditionalShadowParams[x_1482].x;
      u_xlat40 = (1.0f + -(x_1484));
      let x_1487 : f32 = u_xlat39;
      let x_1488 : i32 = u_xlati14;
      let x_1490 : f32 = x_508.x_AdditionalShadowParams[x_1488].x;
      let x_1492 : f32 = u_xlat40;
      u_xlat39 = ((x_1487 * x_1490) + x_1492);
      let x_1495 : f32 = u_xlat10.z;
      u_xlatb40 = (0.0f >= x_1495);
      let x_1499 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1499 >= 1.0f);
      let x_1501 : bool = u_xlatb40;
      let x_1502 : bool = u_xlatb42;
      u_xlatb40 = (x_1501 | x_1502);
      let x_1504 : bool = u_xlatb40;
      let x_1505 : f32 = u_xlat39;
      u_xlat39 = select(x_1505, 1.0f, x_1504);
    } else {
      u_xlat39 = 1.0f;
    }
    let x_1508 : f32 = u_xlat39;
    u_xlat40 = (-(x_1508) + 1.0f);
    let x_1511 : f32 = u_xlat34;
    let x_1512 : f32 = u_xlat40;
    let x_1514 : f32 = u_xlat39;
    u_xlat39 = ((x_1511 * x_1512) + x_1514);
    let x_1516 : f32 = u_xlat37;
    let x_1517 : f32 = u_xlat39;
    u_xlat37 = (x_1516 * x_1517);
    let x_1519 : vec4<f32> = u_xlat1;
    let x_1521 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1519.x, x_1519.y, x_1519.z), x_1521);
    let x_1523 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1523, 0.0f, 1.0f);
    let x_1525 : f32 = u_xlat37;
    let x_1526 : f32 = u_xlat39;
    u_xlat37 = (x_1525 * x_1526);
    let x_1528 : f32 = u_xlat37;
    let x_1530 : i32 = u_xlati14;
    let x_1532 : vec4<f32> = x_1253.x_AdditionalLightsColor[x_1530];
    let x_1534 : vec3<f32> = (vec3<f32>(x_1528, x_1528, x_1528) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
    let x_1537 : vec3<f32> = u_xlat19;
    let x_1538 : f32 = u_xlat38;
    let x_1541 : vec3<f32> = u_xlat4;
    u_xlat19 = ((x_1537 * vec3<f32>(x_1538, x_1538, x_1538)) + x_1541);
    let x_1543 : vec3<f32> = u_xlat19;
    let x_1544 : vec3<f32> = u_xlat19;
    u_xlat14.x = dot(x_1543, x_1544);
    let x_1548 : f32 = u_xlat14.x;
    u_xlat14.x = max(x_1548, 1.17549435e-38f);
    let x_1552 : f32 = u_xlat14.x;
    u_xlat14.x = inverseSqrt(x_1552);
    let x_1555 : vec3<f32> = u_xlat14;
    let x_1557 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1555.x, x_1555.x, x_1555.x) * x_1557);
    let x_1559 : vec4<f32> = u_xlat1;
    let x_1561 : vec3<f32> = u_xlat19;
    u_xlat14.x = dot(vec3<f32>(x_1559.x, x_1559.y, x_1559.z), x_1561);
    let x_1565 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_1565, 0.0f, 1.0f);
    let x_1568 : vec3<f32> = u_xlat9;
    let x_1569 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1568, x_1569);
    let x_1571 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1571, 0.0f, 1.0f);
    let x_1574 : f32 = u_xlat14.x;
    let x_1576 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1574 * x_1576);
    let x_1580 : f32 = u_xlat14.x;
    let x_1582 : f32 = u_xlat8.x;
    u_xlat14.x = ((x_1580 * x_1582) + 1.00001001358032226562f);
    let x_1586 : f32 = u_xlat37;
    let x_1587 : f32 = u_xlat37;
    u_xlat37 = (x_1586 * x_1587);
    let x_1590 : f32 = u_xlat14.x;
    let x_1592 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1590 * x_1592);
    let x_1595 : f32 = u_xlat37;
    u_xlat37 = max(x_1595, 0.10000000149011611938f);
    let x_1598 : f32 = u_xlat14.x;
    let x_1599 : f32 = u_xlat37;
    u_xlat14.x = (x_1598 * x_1599);
    let x_1602 : f32 = u_xlat13;
    let x_1604 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1602 * x_1604);
    let x_1607 : f32 = u_xlat35;
    let x_1609 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1607 / x_1609);
    let x_1612 : vec4<f32> = u_xlat0;
    let x_1614 : vec3<f32> = u_xlat14;
    let x_1617 : vec4<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1612.x, x_1612.y, x_1612.z) * vec3<f32>(x_1614.x, x_1614.x, x_1614.x)) + vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
    let x_1620 : vec3<f32> = u_xlat19;
    let x_1621 : vec4<f32> = u_xlat10;
    let x_1624 : vec4<f32> = u_xlat7;
    let x_1626 : vec3<f32> = ((x_1620 * vec3<f32>(x_1621.x, x_1621.y, x_1621.z)) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
    let x_1627 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);

    continuing {
      let x_1629 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1629 + bitcast<u32>(1i));
    }
  }
  let x_1631 : vec4<f32> = u_xlat5;
  let x_1633 : f32 = u_xlat24;
  let x_1636 : vec4<f32> = u_xlat3;
  let x_1638 : vec3<f32> = ((vec3<f32>(x_1631.x, x_1631.y, x_1631.z) * vec3<f32>(x_1633, x_1633, x_1633)) + vec3<f32>(x_1636.x, x_1636.z, x_1636.w));
  let x_1639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1643 : vec4<f32> = u_xlat7;
  let x_1645 : vec4<f32> = u_xlat0;
  let x_1647 : vec3<f32> = (vec3<f32>(x_1643.x, x_1643.y, x_1643.z) + vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1648 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


