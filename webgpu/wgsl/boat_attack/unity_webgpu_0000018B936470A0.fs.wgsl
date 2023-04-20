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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_25A083BC : sampler;

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

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat33 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb23 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat23 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlati33 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatu15 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati15 : i32;

@group(1) @binding(1) var<uniform> x_1265 : AdditionalLights;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_893 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1398 : f32;
  var x_1408 : f32;
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
  u_xlat34 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat34;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb33;
  if (x_476) {
    let x_481 : vec4<f32> = u_xlat3;
    x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  } else {
    let x_484 : vec4<f32> = u_xlat4;
    x_478 = vec3<f32>(x_484.x, x_484.y, x_484.z);
  }
  let x_486 : vec3<f32> = x_478;
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = vs_INTERP7;
  let x_500 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres0;
  let x_503 : vec3<f32> = (x_489 + -(vec3<f32>(x_500.x, x_500.y, x_500.z)));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : vec3<f32> = vs_INTERP7;
  let x_509 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres1;
  let x_512 : vec3<f32> = (x_507 + -(vec3<f32>(x_509.x, x_509.y, x_509.z)));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec3<f32> = vs_INTERP7;
  let x_518 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_523 : vec3<f32> = vs_INTERP7;
  let x_525 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_528 : vec3<f32> = (x_523 + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_531.x, x_531.y, x_531.z), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_537 : vec4<f32> = u_xlat5;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_543, x_544);
  let x_547 : vec4<f32> = u_xlat7;
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_556 : vec4<f32> = u_xlat4;
  let x_559 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_556 < x_559);
  let x_562 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_562);
  let x_566 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_578);
  let x_583 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_583);
  let x_587 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_587);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat5;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(x_592.y, x_592.z, x_592.w));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat4;
  let x_600 : vec3<f32> = max(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_600.x, x_600.y, x_600.z);
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_603, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_608 : f32 = u_xlat33;
  u_xlat33 = (-(x_608) + 4.0f);
  let x_613 : f32 = u_xlat33;
  u_xlatu33 = u32(x_613);
  let x_617 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_617) << bitcast<u32>(2i));
  let x_620 : vec3<f32> = vs_INTERP7;
  let x_622 : i32 = u_xlati33;
  let x_625 : i32 = u_xlati33;
  let x_629 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_622 + 1i) / 4i)][((x_625 + 1i) % 4i)];
  let x_631 : vec3<f32> = (vec3<f32>(x_620.y, x_620.y, x_620.y) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : i32 = u_xlati33;
  let x_636 : i32 = u_xlati33;
  let x_639 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_634 / 4i)][(x_636 % 4i)];
  let x_641 : vec3<f32> = vs_INTERP7;
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : i32 = u_xlati33;
  let x_652 : i32 = u_xlati33;
  let x_656 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_649 + 2i) / 4i)][((x_652 + 2i) % 4i)];
  let x_658 : vec3<f32> = vs_INTERP7;
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658.z, x_658.z, x_658.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat4;
  let x_668 : i32 = u_xlati33;
  let x_671 : i32 = u_xlati33;
  let x_675 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_668 + 3i) / 4i)][((x_671 + 3i) % 4i)];
  let x_677 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_681 : f32 = vs_INTERP7.y;
  let x_683 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat33 = (x_681 * x_683);
  let x_686 : f32 = x_29.unity_MatrixV[0i].z;
  let x_688 : f32 = vs_INTERP7.x;
  let x_690 : f32 = u_xlat33;
  u_xlat33 = ((x_686 * x_688) + x_690);
  let x_693 : f32 = x_29.unity_MatrixV[2i].z;
  let x_695 : f32 = vs_INTERP7.z;
  let x_697 : f32 = u_xlat33;
  u_xlat33 = ((x_693 * x_695) + x_697);
  let x_699 : f32 = u_xlat33;
  let x_701 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat33 = (x_699 + x_701);
  let x_703 : f32 = u_xlat33;
  let x_706 : f32 = x_29.x_ProjectionParams.y;
  u_xlat33 = (-(x_703) + -(x_706));
  let x_709 : f32 = u_xlat33;
  u_xlat33 = max(x_709, 0.0f);
  let x_711 : f32 = u_xlat33;
  let x_714 : f32 = x_29.unity_FogParams.x;
  u_xlat33 = (x_711 * x_714);
  let x_723 : vec2<f32> = vs_INTERP0;
  let x_725 : f32 = x_29.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_723, x_725);
  u_xlat5 = x_726;
  let x_731 : vec2<f32> = vs_INTERP0;
  let x_733 : f32 = x_29.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  u_xlat6 = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat5;
  u_xlat34 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat34;
  u_xlat34 = (x_748 + 0.5f);
  let x_751 : f32 = u_xlat34;
  let x_753 : vec3<f32> = u_xlat6;
  let x_754 : vec3<f32> = (vec3<f32>(x_751, x_751, x_751) * x_753);
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_758 : f32 = u_xlat5.w;
  u_xlat34 = max(x_758, 0.00009999999747378752f);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : f32 = u_xlat34;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) / vec3<f32>(x_763, x_763, x_763));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_780) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_786 : f32 = u_xlat34;
  let x_789 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat34;
  let x_818 : f32 = u_xlat34;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat13 = (x_828 * x_830);
  let x_832 : f32 = u_xlat35;
  u_xlat35 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat35;
  u_xlat35 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat36 = ((x_838 * 4.0f) + 2.0f);
  let x_843 : f32 = u_xlat2.z;
  u_xlat24 = min(x_843, 1.0f);
  let x_846 : vec4<f32> = u_xlat4;
  let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
  let x_849 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_847.x, x_847.y, x_849);
  let x_861 : vec3<f32> = txVec0;
  let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
  u_xlat4.x = x_863;
  let x_868 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_868) + 1.0f);
  let x_873 : f32 = u_xlat4.x;
  let x_875 : f32 = x_497.x_MainLightShadowParams.x;
  let x_878 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_873 * x_875) + x_878);
  let x_883 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_883);
  let x_887 : f32 = u_xlat4.z;
  u_xlatb26 = (x_887 >= 1.0f);
  let x_889 : bool = u_xlatb26;
  let x_890 : bool = u_xlatb15;
  u_xlatb15 = (x_889 | x_890);
  let x_892 : bool = u_xlatb15;
  if (x_892) {
    x_893 = 1.0f;
  } else {
    let x_898 : f32 = u_xlat4.x;
    x_893 = x_898;
  }
  let x_899 : f32 = x_893;
  u_xlat4.x = x_899;
  let x_901 : vec3<f32> = vs_INTERP7;
  let x_903 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (x_901 + -(x_903));
  let x_906 : vec3<f32> = u_xlat15;
  let x_907 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_906, x_907);
  let x_912 : f32 = u_xlat15.x;
  let x_914 : f32 = x_497.x_MainLightShadowParams.z;
  let x_917 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat26 = ((x_912 * x_914) + x_917);
  let x_919 : f32 = u_xlat26;
  u_xlat26 = clamp(x_919, 0.0f, 1.0f);
  let x_923 : f32 = u_xlat4.x;
  u_xlat37 = (-(x_923) + 1.0f);
  let x_926 : f32 = u_xlat26;
  let x_927 : f32 = u_xlat37;
  let x_930 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_926 * x_927) + x_930);
  let x_933 : vec4<f32> = u_xlat3;
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(-(vec3<f32>(x_933.x, x_933.y, x_933.z)), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat26;
  let x_940 : f32 = u_xlat26;
  u_xlat26 = (x_939 + x_940);
  let x_942 : vec4<f32> = u_xlat1;
  let x_944 : f32 = u_xlat26;
  let x_948 : vec4<f32> = u_xlat3;
  let x_951 : vec3<f32> = ((vec3<f32>(x_942.x, x_942.y, x_942.z) * -(vec3<f32>(x_944, x_944, x_944))) + -(vec3<f32>(x_948.x, x_948.y, x_948.z)));
  let x_952 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec4<f32> = u_xlat1;
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : f32 = u_xlat26;
  u_xlat26 = clamp(x_959, 0.0f, 1.0f);
  let x_961 : f32 = u_xlat26;
  u_xlat26 = (-(x_961) + 1.0f);
  let x_964 : f32 = u_xlat26;
  let x_965 : f32 = u_xlat26;
  u_xlat26 = (x_964 * x_965);
  let x_967 : f32 = u_xlat26;
  let x_968 : f32 = u_xlat26;
  u_xlat26 = (x_967 * x_968);
  let x_970 : f32 = u_xlat34;
  u_xlat37 = ((-(x_970) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_976 : f32 = u_xlat34;
  let x_977 : f32 = u_xlat37;
  u_xlat34 = (x_976 * x_977);
  let x_979 : f32 = u_xlat34;
  u_xlat34 = (x_979 * 6.0f);
  let x_989 : vec4<f32> = u_xlat7;
  let x_991 : f32 = u_xlat34;
  let x_992 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_989.x, x_989.y, x_989.z), x_991);
  u_xlat7 = x_992;
  let x_994 : f32 = u_xlat7.w;
  u_xlat34 = (x_994 + -1.0f);
  let x_997 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_998 : f32 = u_xlat34;
  u_xlat34 = ((x_997 * x_998) + 1.0f);
  let x_1001 : f32 = u_xlat34;
  u_xlat34 = max(x_1001, 0.0f);
  let x_1003 : f32 = u_xlat34;
  u_xlat34 = log2(x_1003);
  let x_1005 : f32 = u_xlat34;
  let x_1007 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1005 * x_1007);
  let x_1009 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1009);
  let x_1011 : f32 = u_xlat34;
  let x_1013 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1011 * x_1013);
  let x_1015 : vec4<f32> = u_xlat7;
  let x_1017 : f32 = u_xlat34;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(x_1017, x_1017, x_1017));
  let x_1020 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1023 : vec4<f32> = u_xlat2;
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_1023.x, x_1023.x) * vec2<f32>(x_1025.x, x_1025.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1031 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_1031);
  let x_1034 : vec4<f32> = u_xlat0;
  let x_1037 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_1034.x, x_1034.y, x_1034.z)) + vec3<f32>(x_1037, x_1037, x_1037));
  let x_1040 : f32 = u_xlat26;
  let x_1042 : vec3<f32> = u_xlat19;
  let x_1044 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1040, x_1040, x_1040) * x_1042) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : f32 = u_xlat34;
  let x_1049 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1047, x_1047, x_1047) * x_1049);
  let x_1051 : vec4<f32> = u_xlat7;
  let x_1053 : vec3<f32> = u_xlat19;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * x_1053);
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat5;
  let x_1059 : vec3<f32> = u_xlat6;
  let x_1061 : vec4<f32> = u_xlat7;
  let x_1063 : vec3<f32> = ((vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * x_1059) + vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1067 : f32 = u_xlat4.x;
  let x_1069 : f32 = x_349.unity_LightData.z;
  u_xlat34 = (x_1067 * x_1069);
  let x_1071 : vec4<f32> = u_xlat1;
  let x_1074 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1079 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1079, 0.0f, 1.0f);
  let x_1082 : f32 = u_xlat34;
  let x_1084 : f32 = u_xlat2.x;
  u_xlat34 = (x_1082 * x_1084);
  let x_1086 : f32 = u_xlat34;
  let x_1089 : vec4<f32> = x_29.x_MainLightColor;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1091.z);
  let x_1094 : vec4<f32> = u_xlat3;
  let x_1097 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1094.x, x_1094.y, x_1094.z) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat7;
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : f32 = u_xlat34;
  u_xlat34 = max(x_1107, 1.17549435e-38f);
  let x_1110 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1110);
  let x_1112 : f32 = u_xlat34;
  let x_1114 : vec4<f32> = u_xlat7;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec4<f32> = u_xlat1;
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1124, 0.0f, 1.0f);
  let x_1127 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1129 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1127.x, x_1127.y, x_1127.z), vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1134 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1134, 0.0f, 1.0f);
  let x_1137 : f32 = u_xlat34;
  let x_1138 : f32 = u_xlat34;
  u_xlat34 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat34;
  let x_1142 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1140 * x_1142) + 1.00001001358032226562f);
  let x_1147 : f32 = u_xlat2.x;
  let x_1149 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1147 * x_1149);
  let x_1152 : f32 = u_xlat34;
  let x_1153 : f32 = u_xlat34;
  u_xlat34 = (x_1152 * x_1153);
  let x_1156 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1156, 0.10000000149011611938f);
  let x_1160 : f32 = u_xlat34;
  let x_1162 : f32 = u_xlat2.x;
  u_xlat34 = (x_1160 * x_1162);
  let x_1164 : f32 = u_xlat36;
  let x_1165 : f32 = u_xlat34;
  u_xlat34 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat13;
  let x_1168 : f32 = u_xlat34;
  u_xlat34 = (x_1167 / x_1168);
  let x_1170 : vec4<f32> = u_xlat0;
  let x_1172 : f32 = u_xlat34;
  let x_1175 : vec3<f32> = u_xlat6;
  let x_1176 : vec3<f32> = ((vec3<f32>(x_1170.x, x_1170.y, x_1170.z) * vec3<f32>(x_1172, x_1172, x_1172)) + x_1175);
  let x_1177 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat4;
  let x_1181 : vec4<f32> = u_xlat7;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.z, x_1179.w) * vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1183.x, x_1184.y, x_1183.y, x_1183.z);
  let x_1187 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1189 : f32 = x_349.unity_LightData.y;
  u_xlat34 = min(x_1187, x_1189);
  let x_1192 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1192));
  let x_1196 : f32 = u_xlat15.x;
  let x_1199 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_1202 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1196 * x_1199) + x_1202);
  let x_1206 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1206, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1219 : u32 = u_xlatu_loop_1;
    let x_1220 : u32 = u_xlatu34;
    if ((x_1219 < x_1220)) {
    } else {
      break;
    }
    let x_1223 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_1223 >> 2u);
    let x_1226 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1226 & 3u));
    let x_1229 : u32 = u_xlatu15;
    let x_1232 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1229)];
    let x_1242 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1247 : vec4<u32> = indexable[x_1242];
    u_xlat15.x = dot(x_1232, bitcast<vec4<f32>>(x_1247));
    let x_1253 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_1253);
    let x_1255 : vec3<f32> = vs_INTERP7;
    let x_1266 : i32 = u_xlati15;
    let x_1268 : vec4<f32> = x_1265.x_AdditionalLightsPosition[x_1266];
    let x_1271 : i32 = u_xlati15;
    let x_1273 : vec4<f32> = x_1265.x_AdditionalLightsPosition[x_1271];
    u_xlat19 = ((-(x_1255) * vec3<f32>(x_1268.w, x_1268.w, x_1268.w)) + vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
    let x_1277 : vec3<f32> = u_xlat19;
    let x_1278 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1277, x_1278);
    let x_1280 : f32 = u_xlat38;
    u_xlat38 = max(x_1280, 0.00006103515625f);
    let x_1284 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1284);
    let x_1287 : f32 = u_xlat39;
    let x_1289 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1287, x_1287, x_1287) * x_1289);
    let x_1292 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1292);
    let x_1294 : f32 = u_xlat38;
    let x_1295 : i32 = u_xlati15;
    let x_1297 : f32 = x_1265.x_AdditionalLightsAttenuation[x_1295].x;
    u_xlat38 = (x_1294 * x_1297);
    let x_1299 : f32 = u_xlat38;
    let x_1301 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1299) * x_1301) + 1.0f);
    let x_1304 : f32 = u_xlat38;
    u_xlat38 = max(x_1304, 0.0f);
    let x_1306 : f32 = u_xlat38;
    let x_1307 : f32 = u_xlat38;
    u_xlat38 = (x_1306 * x_1307);
    let x_1309 : f32 = u_xlat38;
    let x_1310 : f32 = u_xlat40;
    u_xlat38 = (x_1309 * x_1310);
    let x_1312 : i32 = u_xlati15;
    let x_1314 : vec4<f32> = x_1265.x_AdditionalLightsSpotDir[x_1312];
    let x_1316 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), x_1316);
    let x_1318 : f32 = u_xlat40;
    let x_1319 : i32 = u_xlati15;
    let x_1321 : f32 = x_1265.x_AdditionalLightsAttenuation[x_1319].z;
    let x_1323 : i32 = u_xlati15;
    let x_1325 : f32 = x_1265.x_AdditionalLightsAttenuation[x_1323].w;
    u_xlat40 = ((x_1318 * x_1321) + x_1325);
    let x_1327 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1327, 0.0f, 1.0f);
    let x_1329 : f32 = u_xlat40;
    let x_1330 : f32 = u_xlat40;
    u_xlat40 = (x_1329 * x_1330);
    let x_1332 : f32 = u_xlat38;
    let x_1333 : f32 = u_xlat40;
    u_xlat38 = (x_1332 * x_1333);
    let x_1337 : i32 = u_xlati15;
    let x_1339 : f32 = x_497.x_AdditionalShadowParams[x_1337].w;
    u_xlati40 = i32(x_1339);
    let x_1342 : i32 = u_xlati40;
    u_xlatb42 = (x_1342 >= 0i);
    let x_1344 : bool = u_xlatb42;
    if (x_1344) {
      let x_1348 : i32 = u_xlati15;
      let x_1350 : f32 = x_497.x_AdditionalShadowParams[x_1348].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1350, x_1350, x_1350, x_1350))));
      let x_1354 : bool = u_xlatb42;
      if (x_1354) {
        let x_1358 : vec3<f32> = u_xlat9;
        let x_1361 : vec3<f32> = u_xlat9;
        let x_1364 : vec4<bool> = (abs(vec4<f32>(x_1358.z, x_1358.z, x_1358.y, x_1358.z)) >= abs(vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.x)));
        let x_1366 : vec3<bool> = vec3<bool>(x_1364.x, x_1364.y, x_1364.z);
        let x_1367 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
        let x_1370 : bool = u_xlatb10.y;
        let x_1372 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1370 & x_1372);
        let x_1374 : vec3<f32> = u_xlat9;
        let x_1377 : vec4<bool> = (-(vec4<f32>(x_1374.z, x_1374.y, x_1374.z, x_1374.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1378 : vec3<bool> = vec3<bool>(x_1377.x, x_1377.y, x_1377.w);
        let x_1379 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1378.x, x_1378.y, x_1379.z, x_1378.z);
        let x_1383 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1383);
        let x_1388 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1388);
        let x_1393 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1393);
        let x_1397 : bool = u_xlatb10.z;
        if (x_1397) {
          let x_1402 : f32 = u_xlat10.y;
          x_1398 = x_1402;
        } else {
          let x_1404 : f32 = u_xlat43;
          x_1398 = x_1404;
        }
        let x_1405 : f32 = x_1398;
        u_xlat21 = x_1405;
        let x_1407 : bool = u_xlatb42;
        if (x_1407) {
          let x_1412 : f32 = u_xlat10.x;
          x_1408 = x_1412;
        } else {
          let x_1414 : f32 = u_xlat21;
          x_1408 = x_1414;
        }
        let x_1415 : f32 = x_1408;
        u_xlat42 = x_1415;
        let x_1416 : i32 = u_xlati15;
        let x_1418 : f32 = x_497.x_AdditionalShadowParams[x_1416].w;
        u_xlat10.x = trunc(x_1418);
        let x_1421 : f32 = u_xlat42;
        let x_1423 : f32 = u_xlat10.x;
        u_xlat42 = (x_1421 + x_1423);
        let x_1425 : f32 = u_xlat42;
        u_xlati40 = i32(x_1425);
      }
      let x_1427 : i32 = u_xlati40;
      u_xlati40 = (x_1427 << bitcast<u32>(2i));
      let x_1429 : vec3<f32> = vs_INTERP7;
      let x_1432 : i32 = u_xlati40;
      let x_1435 : i32 = u_xlati40;
      let x_1439 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1432 + 1i) / 4i)][((x_1435 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1429.y, x_1429.y, x_1429.y, x_1429.y) * x_1439);
      let x_1441 : i32 = u_xlati40;
      let x_1443 : i32 = u_xlati40;
      let x_1446 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_1441 / 4i)][(x_1443 % 4i)];
      let x_1447 : vec3<f32> = vs_INTERP7;
      let x_1450 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1446 * vec4<f32>(x_1447.x, x_1447.x, x_1447.x, x_1447.x)) + x_1450);
      let x_1452 : i32 = u_xlati40;
      let x_1455 : i32 = u_xlati40;
      let x_1459 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1452 + 2i) / 4i)][((x_1455 + 2i) % 4i)];
      let x_1460 : vec3<f32> = vs_INTERP7;
      let x_1463 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1459 * vec4<f32>(x_1460.z, x_1460.z, x_1460.z, x_1460.z)) + x_1463);
      let x_1465 : vec4<f32> = u_xlat10;
      let x_1466 : i32 = u_xlati40;
      let x_1469 : i32 = u_xlati40;
      let x_1473 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1466 + 3i) / 4i)][((x_1469 + 3i) % 4i)];
      u_xlat10 = (x_1465 + x_1473);
      let x_1475 : vec4<f32> = u_xlat10;
      let x_1477 : vec4<f32> = u_xlat10;
      let x_1479 : vec3<f32> = (vec3<f32>(x_1475.x, x_1475.y, x_1475.z) / vec3<f32>(x_1477.w, x_1477.w, x_1477.w));
      let x_1480 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
      let x_1483 : vec4<f32> = u_xlat10;
      let x_1484 : vec2<f32> = vec2<f32>(x_1483.x, x_1483.y);
      let x_1486 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
      let x_1494 : vec3<f32> = txVec1;
      let x_1496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
      u_xlat40 = x_1496;
      let x_1497 : i32 = u_xlati15;
      let x_1499 : f32 = x_497.x_AdditionalShadowParams[x_1497].x;
      u_xlat42 = (1.0f + -(x_1499));
      let x_1502 : f32 = u_xlat40;
      let x_1503 : i32 = u_xlati15;
      let x_1505 : f32 = x_497.x_AdditionalShadowParams[x_1503].x;
      let x_1507 : f32 = u_xlat42;
      u_xlat40 = ((x_1502 * x_1505) + x_1507);
      let x_1510 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1510);
      let x_1513 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1513 >= 1.0f);
      let x_1516 : bool = u_xlatb42;
      let x_1518 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1516 | x_1518);
      let x_1520 : bool = u_xlatb42;
      let x_1521 : f32 = u_xlat40;
      u_xlat40 = select(x_1521, 1.0f, x_1520);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1524 : f32 = u_xlat40;
    u_xlat42 = (-(x_1524) + 1.0f);
    let x_1528 : f32 = u_xlat2.x;
    let x_1529 : f32 = u_xlat42;
    let x_1531 : f32 = u_xlat40;
    u_xlat40 = ((x_1528 * x_1529) + x_1531);
    let x_1533 : f32 = u_xlat38;
    let x_1534 : f32 = u_xlat40;
    u_xlat38 = (x_1533 * x_1534);
    let x_1536 : vec4<f32> = u_xlat1;
    let x_1538 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1536.x, x_1536.y, x_1536.z), x_1538);
    let x_1540 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1540, 0.0f, 1.0f);
    let x_1542 : f32 = u_xlat38;
    let x_1543 : f32 = u_xlat40;
    u_xlat38 = (x_1542 * x_1543);
    let x_1545 : f32 = u_xlat38;
    let x_1547 : i32 = u_xlati15;
    let x_1549 : vec4<f32> = x_1265.x_AdditionalLightsColor[x_1547];
    let x_1551 : vec3<f32> = (vec3<f32>(x_1545, x_1545, x_1545) * vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
    let x_1552 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
    let x_1554 : vec3<f32> = u_xlat19;
    let x_1555 : f32 = u_xlat39;
    let x_1558 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1554 * vec3<f32>(x_1555, x_1555, x_1555)) + vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : vec3<f32> = u_xlat19;
    let x_1562 : vec3<f32> = u_xlat19;
    u_xlat15.x = dot(x_1561, x_1562);
    let x_1566 : f32 = u_xlat15.x;
    u_xlat15.x = max(x_1566, 1.17549435e-38f);
    let x_1570 : f32 = u_xlat15.x;
    u_xlat15.x = inverseSqrt(x_1570);
    let x_1573 : vec3<f32> = u_xlat15;
    let x_1575 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1573.x, x_1573.x, x_1573.x) * x_1575);
    let x_1577 : vec4<f32> = u_xlat1;
    let x_1579 : vec3<f32> = u_xlat19;
    u_xlat15.x = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), x_1579);
    let x_1583 : f32 = u_xlat15.x;
    u_xlat15.x = clamp(x_1583, 0.0f, 1.0f);
    let x_1586 : vec3<f32> = u_xlat9;
    let x_1587 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1586, x_1587);
    let x_1589 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1589, 0.0f, 1.0f);
    let x_1592 : f32 = u_xlat15.x;
    let x_1594 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1592 * x_1594);
    let x_1598 : f32 = u_xlat15.x;
    let x_1600 : f32 = u_xlat8.x;
    u_xlat15.x = ((x_1598 * x_1600) + 1.00001001358032226562f);
    let x_1604 : f32 = u_xlat38;
    let x_1605 : f32 = u_xlat38;
    u_xlat38 = (x_1604 * x_1605);
    let x_1608 : f32 = u_xlat15.x;
    let x_1610 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1608 * x_1610);
    let x_1613 : f32 = u_xlat38;
    u_xlat38 = max(x_1613, 0.10000000149011611938f);
    let x_1616 : f32 = u_xlat15.x;
    let x_1617 : f32 = u_xlat38;
    u_xlat15.x = (x_1616 * x_1617);
    let x_1620 : f32 = u_xlat36;
    let x_1622 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1620 * x_1622);
    let x_1625 : f32 = u_xlat13;
    let x_1627 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1625 / x_1627);
    let x_1630 : vec4<f32> = u_xlat0;
    let x_1632 : vec3<f32> = u_xlat15;
    let x_1635 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1630.x, x_1630.y, x_1630.z) * vec3<f32>(x_1632.x, x_1632.x, x_1632.x)) + x_1635);
    let x_1637 : vec3<f32> = u_xlat19;
    let x_1638 : vec4<f32> = u_xlat10;
    let x_1641 : vec4<f32> = u_xlat7;
    let x_1643 : vec3<f32> = ((x_1637 * vec3<f32>(x_1638.x, x_1638.y, x_1638.z)) + vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
    let x_1644 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);

    continuing {
      let x_1646 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1646 + bitcast<u32>(1i));
    }
  }
  let x_1648 : vec4<f32> = u_xlat5;
  let x_1650 : f32 = u_xlat24;
  let x_1653 : vec4<f32> = u_xlat4;
  let x_1655 : vec3<f32> = ((vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(x_1650, x_1650, x_1650)) + vec3<f32>(x_1653.x, x_1653.z, x_1653.w));
  let x_1656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1658 : vec4<f32> = u_xlat7;
  let x_1660 : vec4<f32> = u_xlat0;
  let x_1662 : vec3<f32> = (vec3<f32>(x_1658.x, x_1658.y, x_1658.z) + vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
  let x_1663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
  let x_1665 : f32 = u_xlat33;
  let x_1666 : f32 = u_xlat33;
  u_xlat33 = (x_1665 * -(x_1666));
  let x_1669 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1669);
  let x_1671 : vec4<f32> = u_xlat0;
  let x_1674 : vec4<f32> = x_29.unity_FogColor;
  let x_1677 : vec3<f32> = (vec3<f32>(x_1671.x, x_1671.y, x_1671.z) + -(vec3<f32>(x_1674.x, x_1674.y, x_1674.z)));
  let x_1678 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1682 : f32 = u_xlat33;
  let x_1684 : vec4<f32> = u_xlat0;
  let x_1688 : vec4<f32> = x_29.unity_FogColor;
  let x_1690 : vec3<f32> = ((vec3<f32>(x_1682, x_1682, x_1682) * vec3<f32>(x_1684.x, x_1684.y, x_1684.z)) + vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
  let x_1691 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


