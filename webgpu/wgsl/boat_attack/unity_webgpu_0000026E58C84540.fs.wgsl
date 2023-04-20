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

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat24 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

@group(1) @binding(3) var<uniform> x_692 : LightShadows;

var<private> u_xlatb37 : bool;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1052 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlati39 : i32;

var<private> u_xlatb41 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb42 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1184 : f32;
  var x_1194 : f32;
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
  u_xlat1.w = 1.0f;
  let x_504 : vec4<f32> = x_349.unity_SHAr;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_504, x_505);
  let x_510 : vec4<f32> = x_349.unity_SHAg;
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_510, x_511);
  let x_516 : vec4<f32> = x_349.unity_SHAb;
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_516, x_517);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_521.y, x_521.z, x_521.z, x_521.x) * vec4<f32>(x_523.x, x_523.y, x_523.z, x_523.z));
  let x_529 : vec4<f32> = x_349.unity_SHBr;
  let x_530 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHBg;
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHBb;
  let x_542 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_541, x_542);
  let x_546 : f32 = u_xlat1.y;
  let x_548 : f32 = u_xlat1.y;
  u_xlat33 = (x_546 * x_548);
  let x_551 : f32 = u_xlat1.x;
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat33;
  u_xlat33 = ((x_551 * x_553) + -(x_555));
  let x_560 : vec4<f32> = x_349.unity_SHC;
  let x_562 : f32 = u_xlat33;
  let x_565 : vec4<f32> = u_xlat6;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(x_562, x_562, x_562)) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat5;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = max(vec3<f32>(x_577.x, x_577.y, x_577.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
  let x_585 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_591 : vec2<f32> = clamp(vec2<f32>(x_587.x, x_587.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_595 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_595) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_601 : f32 = u_xlat33;
  let x_604 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_601) + x_604);
  let x_606 : f32 = u_xlat33;
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_631) + 1.0f);
  let x_634 : f32 = u_xlat33;
  let x_635 : f32 = u_xlat33;
  u_xlat2.x = (x_634 * x_635);
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_639, 0.0078125f);
  let x_645 : f32 = u_xlat2.x;
  let x_647 : f32 = u_xlat2.x;
  u_xlat13 = (x_645 * x_647);
  let x_649 : f32 = u_xlat34;
  u_xlat34 = (x_649 + 1.0f);
  let x_651 : f32 = u_xlat34;
  u_xlat34 = min(x_651, 1.0f);
  let x_654 : f32 = u_xlat2.x;
  u_xlat35 = ((x_654 * 4.0f) + 2.0f);
  let x_660 : f32 = u_xlat2.z;
  u_xlat24 = min(x_660, 1.0f);
  let x_665 : vec4<f32> = vs_INTERP3;
  let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
  let x_668 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_666.x, x_666.y, x_668);
  let x_681 : vec3<f32> = txVec0;
  let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
  u_xlat36 = x_683;
  let x_695 : f32 = x_692.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_695) + 1.0f);
  let x_698 : f32 = u_xlat36;
  let x_700 : f32 = x_692.x_MainLightShadowParams.x;
  let x_702 : f32 = u_xlat37;
  u_xlat36 = ((x_698 * x_700) + x_702);
  let x_706 : f32 = vs_INTERP3.z;
  u_xlatb37 = (0.0f >= x_706);
  let x_710 : f32 = vs_INTERP3.z;
  u_xlatb38 = (x_710 >= 1.0f);
  let x_712 : bool = u_xlatb37;
  let x_713 : bool = u_xlatb38;
  u_xlatb37 = (x_712 | x_713);
  let x_715 : bool = u_xlatb37;
  let x_716 : f32 = u_xlat36;
  u_xlat36 = select(x_716, 1.0f, x_715);
  let x_718 : vec3<f32> = vs_INTERP7;
  let x_720 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_722 : vec3<f32> = (x_718 + -(x_720));
  let x_723 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat6;
  let x_727 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_731 : f32 = u_xlat37;
  let x_733 : f32 = x_692.x_MainLightShadowParams.z;
  let x_736 : f32 = x_692.x_MainLightShadowParams.w;
  u_xlat38 = ((x_731 * x_733) + x_736);
  let x_738 : f32 = u_xlat38;
  u_xlat38 = clamp(x_738, 0.0f, 1.0f);
  let x_740 : f32 = u_xlat36;
  u_xlat6.x = (-(x_740) + 1.0f);
  let x_744 : f32 = u_xlat38;
  let x_746 : f32 = u_xlat6.x;
  let x_748 : f32 = u_xlat36;
  u_xlat36 = ((x_744 * x_746) + x_748);
  let x_750 : vec3<f32> = u_xlat4;
  let x_752 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(-(x_750), vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : f32 = u_xlat38;
  let x_756 : f32 = u_xlat38;
  u_xlat38 = (x_755 + x_756);
  let x_758 : vec4<f32> = u_xlat1;
  let x_760 : f32 = u_xlat38;
  let x_764 : vec3<f32> = u_xlat4;
  let x_766 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.y, x_758.z) * -(vec3<f32>(x_760, x_760, x_760))) + -(x_764));
  let x_767 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), x_771);
  let x_773 : f32 = u_xlat38;
  u_xlat38 = clamp(x_773, 0.0f, 1.0f);
  let x_775 : f32 = u_xlat38;
  u_xlat38 = (-(x_775) + 1.0f);
  let x_778 : f32 = u_xlat38;
  let x_779 : f32 = u_xlat38;
  u_xlat38 = (x_778 * x_779);
  let x_781 : f32 = u_xlat38;
  let x_782 : f32 = u_xlat38;
  u_xlat38 = (x_781 * x_782);
  let x_785 : f32 = u_xlat33;
  u_xlat39 = ((-(x_785) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_791 : f32 = u_xlat33;
  let x_792 : f32 = u_xlat39;
  u_xlat33 = (x_791 * x_792);
  let x_794 : f32 = u_xlat33;
  u_xlat33 = (x_794 * 6.0f);
  let x_804 : vec4<f32> = u_xlat6;
  let x_806 : f32 = u_xlat33;
  let x_807 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_804.x, x_804.y, x_804.z), x_806);
  u_xlat6 = x_807;
  let x_809 : f32 = u_xlat6.w;
  u_xlat33 = (x_809 + -1.0f);
  let x_812 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_813 : f32 = u_xlat33;
  u_xlat33 = ((x_812 * x_813) + 1.0f);
  let x_816 : f32 = u_xlat33;
  u_xlat33 = max(x_816, 0.0f);
  let x_818 : f32 = u_xlat33;
  u_xlat33 = log2(x_818);
  let x_820 : f32 = u_xlat33;
  let x_822 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_820 * x_822);
  let x_824 : f32 = u_xlat33;
  u_xlat33 = exp2(x_824);
  let x_826 : f32 = u_xlat33;
  let x_828 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_826 * x_828);
  let x_830 : vec4<f32> = u_xlat6;
  let x_832 : f32 = u_xlat33;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_832, x_832, x_832));
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_838 : vec4<f32> = u_xlat2;
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec2<f32>(x_838.x, x_838.x) * vec2<f32>(x_840.x, x_840.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_846 : f32 = u_xlat7.y;
  u_xlat33 = (1.0f / x_846);
  let x_849 : vec4<f32> = u_xlat0;
  let x_852 : f32 = u_xlat34;
  u_xlat18 = (-(vec3<f32>(x_849.x, x_849.y, x_849.z)) + vec3<f32>(x_852, x_852, x_852));
  let x_855 : f32 = u_xlat38;
  let x_857 : vec3<f32> = u_xlat18;
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_855, x_855, x_855) * x_857) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat33;
  let x_864 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_862, x_862, x_862) * x_864);
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = u_xlat18;
  let x_869 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * x_868);
  let x_870 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec4<f32> = u_xlat5;
  let x_877 : vec4<f32> = u_xlat6;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.y, x_872.z) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : f32 = u_xlat36;
  let x_884 : f32 = x_349.unity_LightData.z;
  u_xlat33 = (x_882 * x_884);
  let x_886 : vec4<f32> = u_xlat1;
  let x_889 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : f32 = u_xlat34;
  u_xlat34 = clamp(x_892, 0.0f, 1.0f);
  let x_894 : f32 = u_xlat33;
  let x_895 : f32 = u_xlat34;
  u_xlat33 = (x_894 * x_895);
  let x_897 : f32 = u_xlat33;
  let x_900 : vec4<f32> = x_29.x_MainLightColor;
  let x_902 : vec3<f32> = (vec3<f32>(x_897, x_897, x_897) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec3<f32> = u_xlat4;
  let x_907 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat18 = (x_905 + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec3<f32> = u_xlat18;
  let x_911 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_910, x_911);
  let x_913 : f32 = u_xlat33;
  u_xlat33 = max(x_913, 1.17549435e-38f);
  let x_916 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_916);
  let x_918 : f32 = u_xlat33;
  let x_920 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_918, x_918, x_918) * x_920);
  let x_922 : vec4<f32> = u_xlat1;
  let x_924 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), x_924);
  let x_926 : f32 = u_xlat33;
  u_xlat33 = clamp(x_926, 0.0f, 1.0f);
  let x_929 : vec4<f32> = x_29.x_MainLightPosition;
  let x_931 : vec3<f32> = u_xlat18;
  u_xlat34 = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), x_931);
  let x_933 : f32 = u_xlat34;
  u_xlat34 = clamp(x_933, 0.0f, 1.0f);
  let x_935 : f32 = u_xlat33;
  let x_936 : f32 = u_xlat33;
  u_xlat33 = (x_935 * x_936);
  let x_938 : f32 = u_xlat33;
  let x_940 : f32 = u_xlat7.x;
  u_xlat33 = ((x_938 * x_940) + 1.00001001358032226562f);
  let x_944 : f32 = u_xlat34;
  let x_945 : f32 = u_xlat34;
  u_xlat34 = (x_944 * x_945);
  let x_947 : f32 = u_xlat33;
  let x_948 : f32 = u_xlat33;
  u_xlat33 = (x_947 * x_948);
  let x_950 : f32 = u_xlat34;
  u_xlat34 = max(x_950, 0.10000000149011611938f);
  let x_953 : f32 = u_xlat33;
  let x_954 : f32 = u_xlat34;
  u_xlat33 = (x_953 * x_954);
  let x_956 : f32 = u_xlat35;
  let x_957 : f32 = u_xlat33;
  u_xlat33 = (x_956 * x_957);
  let x_959 : f32 = u_xlat13;
  let x_960 : f32 = u_xlat33;
  u_xlat33 = (x_959 / x_960);
  let x_962 : vec4<f32> = u_xlat0;
  let x_964 : f32 = u_xlat33;
  let x_967 : vec4<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(x_964, x_964, x_964)) + vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat6;
  let x_972 : vec3<f32> = u_xlat18;
  let x_973 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * x_972);
  let x_974 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_977 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_979 : f32 = x_349.unity_LightData.y;
  u_xlat33 = min(x_977, x_979);
  let x_983 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_983));
  let x_986 : f32 = u_xlat37;
  let x_989 : f32 = x_692.x_AdditionalShadowFadeParams.x;
  let x_992 : f32 = x_692.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_986 * x_989) + x_992);
  let x_994 : f32 = u_xlat34;
  u_xlat34 = clamp(x_994, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1006 : u32 = u_xlatu_loop_1;
    let x_1007 : u32 = u_xlatu33;
    if ((x_1006 < x_1007)) {
    } else {
      break;
    }
    let x_1010 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1010 >> 2u);
    let x_1014 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1014 & 3u));
    let x_1017 : u32 = u_xlatu36;
    let x_1020 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1017)];
    let x_1030 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1035 : vec4<u32> = indexable[x_1030];
    u_xlat36 = dot(x_1020, bitcast<vec4<f32>>(x_1035));
    let x_1039 : f32 = u_xlat36;
    u_xlati36 = i32(x_1039);
    let x_1042 : vec3<f32> = vs_INTERP7;
    let x_1053 : i32 = u_xlati36;
    let x_1055 : vec4<f32> = x_1052.x_AdditionalLightsPosition[x_1053];
    let x_1058 : i32 = u_xlati36;
    let x_1060 : vec4<f32> = x_1052.x_AdditionalLightsPosition[x_1058];
    u_xlat8 = ((-(x_1042) * vec3<f32>(x_1055.w, x_1055.w, x_1055.w)) + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
    let x_1063 : vec3<f32> = u_xlat8;
    let x_1064 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1063, x_1064);
    let x_1066 : f32 = u_xlat37;
    u_xlat37 = max(x_1066, 0.00006103515625f);
    let x_1069 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_1069);
    let x_1072 : f32 = u_xlat38;
    let x_1074 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1072, x_1072, x_1072) * x_1074);
    let x_1076 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_1076);
    let x_1078 : f32 = u_xlat37;
    let x_1079 : i32 = u_xlati36;
    let x_1081 : f32 = x_1052.x_AdditionalLightsAttenuation[x_1079].x;
    u_xlat37 = (x_1078 * x_1081);
    let x_1083 : f32 = u_xlat37;
    let x_1085 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1083) * x_1085) + 1.0f);
    let x_1088 : f32 = u_xlat37;
    u_xlat37 = max(x_1088, 0.0f);
    let x_1090 : f32 = u_xlat37;
    let x_1091 : f32 = u_xlat37;
    u_xlat37 = (x_1090 * x_1091);
    let x_1093 : f32 = u_xlat37;
    let x_1094 : f32 = u_xlat39;
    u_xlat37 = (x_1093 * x_1094);
    let x_1096 : i32 = u_xlati36;
    let x_1098 : vec4<f32> = x_1052.x_AdditionalLightsSpotDir[x_1096];
    let x_1100 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1098.x, x_1098.y, x_1098.z), x_1100);
    let x_1102 : f32 = u_xlat39;
    let x_1103 : i32 = u_xlati36;
    let x_1105 : f32 = x_1052.x_AdditionalLightsAttenuation[x_1103].z;
    let x_1107 : i32 = u_xlati36;
    let x_1109 : f32 = x_1052.x_AdditionalLightsAttenuation[x_1107].w;
    u_xlat39 = ((x_1102 * x_1105) + x_1109);
    let x_1111 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1111, 0.0f, 1.0f);
    let x_1113 : f32 = u_xlat39;
    let x_1114 : f32 = u_xlat39;
    u_xlat39 = (x_1113 * x_1114);
    let x_1116 : f32 = u_xlat37;
    let x_1117 : f32 = u_xlat39;
    u_xlat37 = (x_1116 * x_1117);
    let x_1121 : i32 = u_xlati36;
    let x_1123 : f32 = x_692.x_AdditionalShadowParams[x_1121].w;
    u_xlati39 = i32(x_1123);
    let x_1126 : i32 = u_xlati39;
    u_xlatb41 = (x_1126 >= 0i);
    let x_1128 : bool = u_xlatb41;
    if (x_1128) {
      let x_1132 : i32 = u_xlati36;
      let x_1134 : f32 = x_692.x_AdditionalShadowParams[x_1132].z;
      u_xlatb41 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1134, x_1134, x_1134, x_1134))));
      let x_1139 : bool = u_xlatb41;
      if (x_1139) {
        let x_1144 : vec3<f32> = u_xlat9;
        let x_1147 : vec3<f32> = u_xlat9;
        let x_1150 : vec4<bool> = (abs(vec4<f32>(x_1144.z, x_1144.z, x_1144.y, x_1144.z)) >= abs(vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.x)));
        let x_1152 : vec3<bool> = vec3<bool>(x_1150.x, x_1150.y, x_1150.z);
        let x_1153 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1156 : bool = u_xlatb10.y;
        let x_1158 : bool = u_xlatb10.x;
        u_xlatb41 = (x_1156 & x_1158);
        let x_1160 : vec3<f32> = u_xlat9;
        let x_1163 : vec4<bool> = (-(vec4<f32>(x_1160.z, x_1160.y, x_1160.z, x_1160.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1164 : vec3<bool> = vec3<bool>(x_1163.x, x_1163.y, x_1163.w);
        let x_1165 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1164.x, x_1164.y, x_1165.z, x_1164.z);
        let x_1169 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1169);
        let x_1174 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1174);
        let x_1180 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1180);
        let x_1183 : bool = u_xlatb10.z;
        if (x_1183) {
          let x_1188 : f32 = u_xlat10.y;
          x_1184 = x_1188;
        } else {
          let x_1190 : f32 = u_xlat42;
          x_1184 = x_1190;
        }
        let x_1191 : f32 = x_1184;
        u_xlat42 = x_1191;
        let x_1193 : bool = u_xlatb41;
        if (x_1193) {
          let x_1198 : f32 = u_xlat10.x;
          x_1194 = x_1198;
        } else {
          let x_1200 : f32 = u_xlat42;
          x_1194 = x_1200;
        }
        let x_1201 : f32 = x_1194;
        u_xlat41 = x_1201;
        let x_1202 : i32 = u_xlati36;
        let x_1204 : f32 = x_692.x_AdditionalShadowParams[x_1202].w;
        u_xlat42 = trunc(x_1204);
        let x_1206 : f32 = u_xlat41;
        let x_1207 : f32 = u_xlat42;
        u_xlat41 = (x_1206 + x_1207);
        let x_1209 : f32 = u_xlat41;
        u_xlati39 = i32(x_1209);
      }
      let x_1211 : i32 = u_xlati39;
      u_xlati39 = (x_1211 << bitcast<u32>(2i));
      let x_1213 : vec3<f32> = vs_INTERP7;
      let x_1216 : i32 = u_xlati39;
      let x_1219 : i32 = u_xlati39;
      let x_1223 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[((x_1216 + 1i) / 4i)][((x_1219 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1223);
      let x_1225 : i32 = u_xlati39;
      let x_1227 : i32 = u_xlati39;
      let x_1230 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[(x_1225 / 4i)][(x_1227 % 4i)];
      let x_1231 : vec3<f32> = vs_INTERP7;
      let x_1234 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1230 * vec4<f32>(x_1231.x, x_1231.x, x_1231.x, x_1231.x)) + x_1234);
      let x_1236 : i32 = u_xlati39;
      let x_1239 : i32 = u_xlati39;
      let x_1243 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[((x_1236 + 2i) / 4i)][((x_1239 + 2i) % 4i)];
      let x_1244 : vec3<f32> = vs_INTERP7;
      let x_1247 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1243 * vec4<f32>(x_1244.z, x_1244.z, x_1244.z, x_1244.z)) + x_1247);
      let x_1249 : vec4<f32> = u_xlat10;
      let x_1250 : i32 = u_xlati39;
      let x_1253 : i32 = u_xlati39;
      let x_1257 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[((x_1250 + 3i) / 4i)][((x_1253 + 3i) % 4i)];
      u_xlat10 = (x_1249 + x_1257);
      let x_1259 : vec4<f32> = u_xlat10;
      let x_1261 : vec4<f32> = u_xlat10;
      let x_1263 : vec3<f32> = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) / vec3<f32>(x_1261.w, x_1261.w, x_1261.w));
      let x_1264 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
      let x_1267 : vec4<f32> = u_xlat10;
      let x_1268 : vec2<f32> = vec2<f32>(x_1267.x, x_1267.y);
      let x_1270 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1268.x, x_1268.y, x_1270);
      let x_1278 : vec3<f32> = txVec1;
      let x_1280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
      u_xlat39 = x_1280;
      let x_1281 : i32 = u_xlati36;
      let x_1283 : f32 = x_692.x_AdditionalShadowParams[x_1281].x;
      u_xlat41 = (1.0f + -(x_1283));
      let x_1286 : f32 = u_xlat39;
      let x_1287 : i32 = u_xlati36;
      let x_1289 : f32 = x_692.x_AdditionalShadowParams[x_1287].x;
      let x_1291 : f32 = u_xlat41;
      u_xlat39 = ((x_1286 * x_1289) + x_1291);
      let x_1294 : f32 = u_xlat10.z;
      u_xlatb41 = (0.0f >= x_1294);
      let x_1298 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1298 >= 1.0f);
      let x_1300 : bool = u_xlatb41;
      let x_1301 : bool = u_xlatb42;
      u_xlatb41 = (x_1300 | x_1301);
      let x_1303 : bool = u_xlatb41;
      let x_1304 : f32 = u_xlat39;
      u_xlat39 = select(x_1304, 1.0f, x_1303);
    } else {
      u_xlat39 = 1.0f;
    }
    let x_1307 : f32 = u_xlat39;
    u_xlat41 = (-(x_1307) + 1.0f);
    let x_1310 : f32 = u_xlat34;
    let x_1311 : f32 = u_xlat41;
    let x_1313 : f32 = u_xlat39;
    u_xlat39 = ((x_1310 * x_1311) + x_1313);
    let x_1315 : f32 = u_xlat37;
    let x_1316 : f32 = u_xlat39;
    u_xlat37 = (x_1315 * x_1316);
    let x_1318 : vec4<f32> = u_xlat1;
    let x_1320 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1318.x, x_1318.y, x_1318.z), x_1320);
    let x_1322 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1322, 0.0f, 1.0f);
    let x_1324 : f32 = u_xlat37;
    let x_1325 : f32 = u_xlat39;
    u_xlat37 = (x_1324 * x_1325);
    let x_1327 : f32 = u_xlat37;
    let x_1329 : i32 = u_xlati36;
    let x_1331 : vec4<f32> = x_1052.x_AdditionalLightsColor[x_1329];
    let x_1333 : vec3<f32> = (vec3<f32>(x_1327, x_1327, x_1327) * vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
    let x_1334 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
    let x_1336 : vec3<f32> = u_xlat8;
    let x_1337 : f32 = u_xlat38;
    let x_1340 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1336 * vec3<f32>(x_1337, x_1337, x_1337)) + x_1340);
    let x_1342 : vec3<f32> = u_xlat8;
    let x_1343 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1342, x_1343);
    let x_1345 : f32 = u_xlat36;
    u_xlat36 = max(x_1345, 1.17549435e-38f);
    let x_1347 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1347);
    let x_1349 : f32 = u_xlat36;
    let x_1351 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1349, x_1349, x_1349) * x_1351);
    let x_1353 : vec4<f32> = u_xlat1;
    let x_1355 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1353.x, x_1353.y, x_1353.z), x_1355);
    let x_1357 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1357, 0.0f, 1.0f);
    let x_1359 : vec3<f32> = u_xlat9;
    let x_1360 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1359, x_1360);
    let x_1362 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1362, 0.0f, 1.0f);
    let x_1364 : f32 = u_xlat36;
    let x_1365 : f32 = u_xlat36;
    u_xlat36 = (x_1364 * x_1365);
    let x_1367 : f32 = u_xlat36;
    let x_1369 : f32 = u_xlat7.x;
    u_xlat36 = ((x_1367 * x_1369) + 1.00001001358032226562f);
    let x_1372 : f32 = u_xlat37;
    let x_1373 : f32 = u_xlat37;
    u_xlat37 = (x_1372 * x_1373);
    let x_1375 : f32 = u_xlat36;
    let x_1376 : f32 = u_xlat36;
    u_xlat36 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat37;
    u_xlat37 = max(x_1378, 0.10000000149011611938f);
    let x_1380 : f32 = u_xlat36;
    let x_1381 : f32 = u_xlat37;
    u_xlat36 = (x_1380 * x_1381);
    let x_1383 : f32 = u_xlat35;
    let x_1384 : f32 = u_xlat36;
    u_xlat36 = (x_1383 * x_1384);
    let x_1386 : f32 = u_xlat13;
    let x_1387 : f32 = u_xlat36;
    u_xlat36 = (x_1386 / x_1387);
    let x_1389 : vec4<f32> = u_xlat0;
    let x_1391 : f32 = u_xlat36;
    let x_1394 : vec4<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * vec3<f32>(x_1391, x_1391, x_1391)) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec3<f32> = u_xlat8;
    let x_1398 : vec4<f32> = u_xlat10;
    let x_1401 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1397 * vec3<f32>(x_1398.x, x_1398.y, x_1398.z)) + x_1401);

    continuing {
      let x_1403 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1403 + bitcast<u32>(1i));
    }
  }
  let x_1405 : vec4<f32> = u_xlat3;
  let x_1407 : f32 = u_xlat24;
  let x_1410 : vec4<f32> = u_xlat6;
  let x_1412 : vec3<f32> = ((vec3<f32>(x_1405.x, x_1405.y, x_1405.z) * vec3<f32>(x_1407, x_1407, x_1407)) + vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
  let x_1413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1417 : vec3<f32> = u_xlat18;
  let x_1418 : vec4<f32> = u_xlat0;
  let x_1420 : vec3<f32> = (x_1417 + vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
  let x_1421 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


