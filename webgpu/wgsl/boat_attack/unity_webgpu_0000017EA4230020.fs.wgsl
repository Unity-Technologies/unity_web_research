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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(7) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb29 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat29 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat30 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(3) var<uniform> x_686 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat20 : f32;

@group(1) @binding(4) var<uniform> x_752 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1219 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_837 : f32;
  var x_848 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1351 : f32;
  var x_1360 : f32;
  var txVec1 : vec3<f32>;
  var x_1782 : f32;
  var x_1795 : f32;
  var x_1843 : f32;
  var x_1854 : vec3<f32>;
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
  u_xlatb14 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat14;
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
  u_xlatb14 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat28 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat28;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat14 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat15.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat28;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat28 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat28;
  u_xlatb42 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat28;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat15.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat28;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat28 = x_207;
  let x_208 : bool = u_xlatb42;
  if (x_208) {
    let x_213 : f32 = u_xlat15.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat28;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat28 = x_216;
  let x_217 : f32 = u_xlat28;
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
  let x_268 : f32 = u_xlat14;
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
  u_xlat42 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat42;
  u_xlat42 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat42;
  u_xlat42 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_319);
  let x_321 : f32 = u_xlat42;
  u_xlat42 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat29.y;
  let x_367 : f32 = u_xlat29.x;
  u_xlat29.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat15;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat42;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat42;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb42 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat43;
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
  let x_476 : bool = u_xlatb42;
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
  let x_490 : f32 = vs_INTERP7.y;
  let x_492 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat42 = (x_490 * x_492);
  let x_495 : f32 = x_29.unity_MatrixV[0i].z;
  let x_497 : f32 = vs_INTERP7.x;
  let x_499 : f32 = u_xlat42;
  u_xlat42 = ((x_495 * x_497) + x_499);
  let x_502 : f32 = x_29.unity_MatrixV[2i].z;
  let x_504 : f32 = vs_INTERP7.z;
  let x_506 : f32 = u_xlat42;
  u_xlat42 = ((x_502 * x_504) + x_506);
  let x_508 : f32 = u_xlat42;
  let x_510 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat42 = (x_508 + x_510);
  let x_512 : f32 = u_xlat42;
  let x_516 : f32 = x_29.x_ProjectionParams.y;
  u_xlat42 = (-(x_512) + -(x_516));
  let x_519 : f32 = u_xlat42;
  u_xlat42 = max(x_519, 0.0f);
  let x_521 : f32 = u_xlat42;
  let x_524 : f32 = x_29.unity_FogParams.x;
  u_xlat42 = (x_521 * x_524);
  let x_533 : vec2<f32> = vs_INTERP0;
  let x_535 : f32 = x_29.x_GlobalMipBias.x;
  let x_536 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_533, x_535);
  u_xlat4 = x_536;
  let x_542 : vec2<f32> = vs_INTERP0;
  let x_544 : f32 = x_29.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_542, x_544);
  u_xlat5 = vec3<f32>(x_545.x, x_545.y, x_545.z);
  let x_547 : vec4<f32> = u_xlat4;
  let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : f32 = u_xlat43;
  u_xlat43 = (x_559 + 0.5f);
  let x_562 : f32 = u_xlat43;
  let x_564 : vec3<f32> = u_xlat5;
  let x_565 : vec3<f32> = (vec3<f32>(x_562, x_562, x_562) * x_564);
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = u_xlat4.w;
  u_xlat43 = max(x_569, 0.00009999999747378752f);
  let x_572 : vec4<f32> = u_xlat4;
  let x_574 : f32 = u_xlat43;
  let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) / vec3<f32>(x_574, x_574, x_574));
  let x_577 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat2;
  let x_580 : vec2<f32> = vec2<f32>(x_579.x, x_579.y);
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_587 : vec2<f32> = clamp(vec2<f32>(x_583.x, x_583.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_588 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
  let x_591 : f32 = u_xlat2.x;
  u_xlat43 = ((-(x_591) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_597 : f32 = u_xlat43;
  let x_600 : f32 = u_xlat2.y;
  u_xlat44 = (-(x_597) + x_600);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat43;
  u_xlat5 = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604, x_604, x_604));
  let x_607 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat43;
  let x_629 : f32 = u_xlat43;
  u_xlat2.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat2.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat16 = (x_639 * x_641);
  let x_643 : f32 = u_xlat44;
  u_xlat44 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat44;
  u_xlat44 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat2.x;
  u_xlat45 = ((x_649 * 4.0f) + 2.0f);
  let x_655 : f32 = u_xlat2.z;
  u_xlat30 = min(x_655, 1.0f);
  let x_659 : vec4<f32> = vs_INTERP3;
  let x_660 : vec2<f32> = vec2<f32>(x_659.x, x_659.y);
  let x_662 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_660.x, x_660.y, x_662);
  let x_675 : vec3<f32> = txVec0;
  let x_677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_675.xy, x_675.z);
  u_xlat46 = x_677;
  let x_689 : f32 = x_686.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_689) + 1.0f);
  let x_692 : f32 = u_xlat46;
  let x_694 : f32 = x_686.x_MainLightShadowParams.x;
  let x_696 : f32 = u_xlat47;
  u_xlat46 = ((x_692 * x_694) + x_696);
  let x_700 : f32 = vs_INTERP3.z;
  u_xlatb47 = (0.0f >= x_700);
  let x_704 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_704 >= 1.0f);
  let x_706 : bool = u_xlatb47;
  let x_707 : bool = u_xlatb6;
  u_xlatb47 = (x_706 | x_707);
  let x_709 : bool = u_xlatb47;
  let x_710 : f32 = u_xlat46;
  u_xlat46 = select(x_710, 1.0f, x_709);
  let x_713 : vec3<f32> = vs_INTERP7;
  let x_715 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_717 : vec3<f32> = (x_713 + -(x_715));
  let x_718 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat6;
  let x_722 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_720.x, x_720.y, x_720.z), vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : f32 = u_xlat47;
  let x_727 : f32 = x_686.x_MainLightShadowParams.z;
  let x_730 : f32 = x_686.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_725 * x_727) + x_730);
  let x_734 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_734, 0.0f, 1.0f);
  let x_738 : f32 = u_xlat46;
  u_xlat20 = (-(x_738) + 1.0f);
  let x_742 : f32 = u_xlat6.x;
  let x_743 : f32 = u_xlat20;
  let x_745 : f32 = u_xlat46;
  u_xlat46 = ((x_742 * x_743) + x_745);
  let x_754 : f32 = x_752.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_754 == -1.0f));
  let x_756 : bool = u_xlatb6;
  if (x_756) {
    let x_759 : vec3<f32> = vs_INTERP7;
    let x_763 : vec4<f32> = x_752.x_MainLightWorldToLight[1i];
    let x_765 : vec2<f32> = (vec2<f32>(x_759.y, x_759.y) * vec2<f32>(x_763.x, x_763.y));
    let x_766 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
    let x_769 : vec4<f32> = x_752.x_MainLightWorldToLight[0i];
    let x_771 : vec3<f32> = vs_INTERP7;
    let x_774 : vec4<f32> = u_xlat6;
    let x_776 : vec2<f32> = ((vec2<f32>(x_769.x, x_769.y) * vec2<f32>(x_771.x, x_771.x)) + vec2<f32>(x_774.x, x_774.y));
    let x_777 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
    let x_780 : vec4<f32> = x_752.x_MainLightWorldToLight[2i];
    let x_782 : vec3<f32> = vs_INTERP7;
    let x_785 : vec4<f32> = u_xlat6;
    let x_787 : vec2<f32> = ((vec2<f32>(x_780.x, x_780.y) * vec2<f32>(x_782.z, x_782.z)) + vec2<f32>(x_785.x, x_785.y));
    let x_788 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
    let x_790 : vec4<f32> = u_xlat6;
    let x_793 : vec4<f32> = x_752.x_MainLightWorldToLight[3i];
    let x_795 : vec2<f32> = (vec2<f32>(x_790.x, x_790.y) + vec2<f32>(x_793.x, x_793.y));
    let x_796 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
    let x_798 : vec4<f32> = u_xlat6;
    let x_802 : vec2<f32> = ((vec2<f32>(x_798.x, x_798.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_803 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
    let x_810 : vec4<f32> = u_xlat6;
    let x_813 : f32 = x_29.x_GlobalMipBias.x;
    let x_814 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_810.x, x_810.y), x_813);
    u_xlat6 = x_814;
    let x_817 : f32 = x_752.x_MainLightCookieTextureFormat;
    let x_819 : f32 = x_752.x_MainLightCookieTextureFormat;
    let x_821 : f32 = x_752.x_MainLightCookieTextureFormat;
    let x_823 : f32 = x_752.x_MainLightCookieTextureFormat;
    let x_824 : vec4<f32> = vec4<f32>(x_817, x_819, x_821, x_823);
    let x_832 : vec4<bool> = (vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_832.x, x_832.y);
    let x_836 : bool = u_xlatb7.y;
    if (x_836) {
      let x_841 : f32 = u_xlat6.w;
      x_837 = x_841;
    } else {
      let x_844 : f32 = u_xlat6.x;
      x_837 = x_844;
    }
    let x_845 : f32 = x_837;
    u_xlat48 = x_845;
    let x_847 : bool = u_xlatb7.x;
    if (x_847) {
      let x_851 : vec4<f32> = u_xlat6;
      x_848 = vec3<f32>(x_851.x, x_851.y, x_851.z);
    } else {
      let x_854 : f32 = u_xlat48;
      x_848 = vec3<f32>(x_854, x_854, x_854);
    }
    let x_856 : vec3<f32> = x_848;
    let x_857 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_863 : vec4<f32> = u_xlat6;
  let x_866 : vec4<f32> = x_29.x_MainLightColor;
  let x_868 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat3;
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_871.x, x_871.y, x_871.z)), vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : f32 = u_xlat48;
  let x_878 : f32 = u_xlat48;
  u_xlat48 = (x_877 + x_878);
  let x_881 : vec4<f32> = u_xlat1;
  let x_883 : f32 = u_xlat48;
  let x_887 : vec4<f32> = u_xlat3;
  let x_890 : vec3<f32> = ((vec3<f32>(x_881.x, x_881.y, x_881.z) * -(vec3<f32>(x_883, x_883, x_883))) + -(vec3<f32>(x_887.x, x_887.y, x_887.z)));
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat1;
  let x_895 : vec4<f32> = u_xlat3;
  u_xlat48 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : f32 = u_xlat48;
  u_xlat48 = clamp(x_898, 0.0f, 1.0f);
  let x_900 : f32 = u_xlat48;
  u_xlat48 = (-(x_900) + 1.0f);
  let x_903 : f32 = u_xlat48;
  let x_904 : f32 = u_xlat48;
  u_xlat48 = (x_903 * x_904);
  let x_906 : f32 = u_xlat48;
  let x_907 : f32 = u_xlat48;
  u_xlat48 = (x_906 * x_907);
  let x_910 : f32 = u_xlat43;
  u_xlat49 = ((-(x_910) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_916 : f32 = u_xlat43;
  let x_917 : f32 = u_xlat49;
  u_xlat43 = (x_916 * x_917);
  let x_919 : f32 = u_xlat43;
  u_xlat43 = (x_919 * 6.0f);
  let x_929 : vec4<f32> = u_xlat7;
  let x_931 : f32 = u_xlat43;
  let x_932 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_929.x, x_929.y, x_929.z), x_931);
  u_xlat7 = x_932;
  let x_934 : f32 = u_xlat7.w;
  u_xlat43 = (x_934 + -1.0f);
  let x_937 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_938 : f32 = u_xlat43;
  u_xlat43 = ((x_937 * x_938) + 1.0f);
  let x_941 : f32 = u_xlat43;
  u_xlat43 = max(x_941, 0.0f);
  let x_943 : f32 = u_xlat43;
  u_xlat43 = log2(x_943);
  let x_945 : f32 = u_xlat43;
  let x_947 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_945 * x_947);
  let x_949 : f32 = u_xlat43;
  u_xlat43 = exp2(x_949);
  let x_951 : f32 = u_xlat43;
  let x_953 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_951 * x_953);
  let x_955 : vec4<f32> = u_xlat7;
  let x_957 : f32 = u_xlat43;
  let x_959 : vec3<f32> = (vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(x_957, x_957, x_957));
  let x_960 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_963 : vec4<f32> = u_xlat2;
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_963.x, x_963.x) * vec2<f32>(x_965.x, x_965.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_971 : f32 = u_xlat8.y;
  u_xlat43 = (1.0f / x_971);
  let x_974 : vec4<f32> = u_xlat0;
  let x_977 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_974.x, x_974.y, x_974.z)) + vec3<f32>(x_977, x_977, x_977));
  let x_980 : f32 = u_xlat48;
  let x_982 : vec3<f32> = u_xlat22;
  let x_984 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_980, x_980, x_980) * x_982) + vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : f32 = u_xlat43;
  let x_989 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_987, x_987, x_987) * x_989);
  let x_991 : vec4<f32> = u_xlat7;
  let x_993 : vec3<f32> = u_xlat22;
  let x_994 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * x_993);
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat4;
  let x_999 : vec3<f32> = u_xlat5;
  let x_1001 : vec4<f32> = u_xlat7;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_997.x, x_997.y, x_997.z) * x_999) + vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : f32 = u_xlat46;
  let x_1008 : f32 = x_349.unity_LightData.z;
  u_xlat43 = (x_1006 * x_1008);
  let x_1010 : vec4<f32> = u_xlat1;
  let x_1013 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1018 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1018, 0.0f, 1.0f);
  let x_1021 : f32 = u_xlat43;
  let x_1023 : f32 = u_xlat2.x;
  u_xlat43 = (x_1021 * x_1023);
  let x_1025 : f32 = u_xlat43;
  let x_1027 : vec4<f32> = u_xlat6;
  let x_1029 : vec3<f32> = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat3;
  let x_1035 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1037 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) + vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec4<f32> = u_xlat7;
  let x_1042 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : f32 = u_xlat43;
  u_xlat43 = max(x_1045, 1.17549435e-38f);
  let x_1048 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1048);
  let x_1050 : f32 = u_xlat43;
  let x_1052 : vec4<f32> = u_xlat7;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1050, x_1050, x_1050) * vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat1;
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1062, 0.0f, 1.0f);
  let x_1065 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1067 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1065.x, x_1065.y, x_1065.z), vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1072 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1072, 0.0f, 1.0f);
  let x_1075 : f32 = u_xlat43;
  let x_1076 : f32 = u_xlat43;
  u_xlat43 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat43;
  let x_1080 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1078 * x_1080) + 1.00001001358032226562f);
  let x_1085 : f32 = u_xlat2.x;
  let x_1087 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1085 * x_1087);
  let x_1090 : f32 = u_xlat43;
  let x_1091 : f32 = u_xlat43;
  u_xlat43 = (x_1090 * x_1091);
  let x_1094 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1094, 0.10000000149011611938f);
  let x_1098 : f32 = u_xlat43;
  let x_1100 : f32 = u_xlat2.x;
  u_xlat43 = (x_1098 * x_1100);
  let x_1102 : f32 = u_xlat45;
  let x_1103 : f32 = u_xlat43;
  u_xlat43 = (x_1102 * x_1103);
  let x_1105 : f32 = u_xlat16;
  let x_1106 : f32 = u_xlat43;
  u_xlat43 = (x_1105 / x_1106);
  let x_1108 : vec4<f32> = u_xlat0;
  let x_1110 : f32 = u_xlat43;
  let x_1113 : vec3<f32> = u_xlat5;
  let x_1114 : vec3<f32> = ((vec3<f32>(x_1108.x, x_1108.y, x_1108.z) * vec3<f32>(x_1110, x_1110, x_1110)) + x_1113);
  let x_1115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat6;
  let x_1119 : vec4<f32> = u_xlat7;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) * vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1125 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1127 : f32 = x_349.unity_LightData.y;
  u_xlat43 = min(x_1125, x_1127);
  let x_1131 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1131));
  let x_1134 : f32 = u_xlat47;
  let x_1137 : f32 = x_686.x_AdditionalShadowFadeParams.x;
  let x_1140 : f32 = x_686.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1134 * x_1137) + x_1140);
  let x_1144 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1144, 0.0f, 1.0f);
  let x_1148 : f32 = x_752.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1150 : f32 = x_752.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1152 : f32 = x_752.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1154 : f32 = x_752.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1155 : vec4<f32> = vec4<f32>(x_1148, x_1150, x_1152, x_1154);
  let x_1161 : vec4<bool> = (vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1155.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1161.x, x_1161.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1173 : u32 = u_xlatu_loop_1;
    let x_1174 : u32 = u_xlatu43;
    if ((x_1173 < x_1174)) {
    } else {
      break;
    }
    let x_1177 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1177 >> 2u);
    let x_1181 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1181 & 3u));
    let x_1184 : u32 = u_xlatu46;
    let x_1187 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1184)];
    let x_1197 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1202 : vec4<u32> = indexable[x_1197];
    u_xlat46 = dot(x_1187, bitcast<vec4<f32>>(x_1202));
    let x_1206 : f32 = u_xlat46;
    u_xlati46 = i32(x_1206);
    let x_1209 : vec3<f32> = vs_INTERP7;
    let x_1220 : i32 = u_xlati46;
    let x_1222 : vec4<f32> = x_1219.x_AdditionalLightsPosition[x_1220];
    let x_1225 : i32 = u_xlati46;
    let x_1227 : vec4<f32> = x_1219.x_AdditionalLightsPosition[x_1225];
    u_xlat9 = ((-(x_1209) * vec3<f32>(x_1222.w, x_1222.w, x_1222.w)) + vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
    let x_1230 : vec3<f32> = u_xlat9;
    let x_1231 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1230, x_1231);
    let x_1233 : f32 = u_xlat47;
    u_xlat47 = max(x_1233, 0.00006103515625f);
    let x_1236 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1236);
    let x_1239 : f32 = u_xlat48;
    let x_1241 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1239, x_1239, x_1239) * x_1241);
    let x_1244 : f32 = u_xlat47;
    u_xlat35 = (1.0f / x_1244);
    let x_1246 : f32 = u_xlat47;
    let x_1247 : i32 = u_xlati46;
    let x_1249 : f32 = x_1219.x_AdditionalLightsAttenuation[x_1247].x;
    u_xlat47 = (x_1246 * x_1249);
    let x_1251 : f32 = u_xlat47;
    let x_1253 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1251) * x_1253) + 1.0f);
    let x_1256 : f32 = u_xlat47;
    u_xlat47 = max(x_1256, 0.0f);
    let x_1258 : f32 = u_xlat47;
    let x_1259 : f32 = u_xlat47;
    u_xlat47 = (x_1258 * x_1259);
    let x_1261 : f32 = u_xlat47;
    let x_1262 : f32 = u_xlat35;
    u_xlat47 = (x_1261 * x_1262);
    let x_1264 : i32 = u_xlati46;
    let x_1266 : vec4<f32> = x_1219.x_AdditionalLightsSpotDir[x_1264];
    let x_1268 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1266.x, x_1266.y, x_1266.z), x_1268);
    let x_1270 : f32 = u_xlat35;
    let x_1271 : i32 = u_xlati46;
    let x_1273 : f32 = x_1219.x_AdditionalLightsAttenuation[x_1271].z;
    let x_1275 : i32 = u_xlati46;
    let x_1277 : f32 = x_1219.x_AdditionalLightsAttenuation[x_1275].w;
    u_xlat35 = ((x_1270 * x_1273) + x_1277);
    let x_1279 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1279, 0.0f, 1.0f);
    let x_1281 : f32 = u_xlat35;
    let x_1282 : f32 = u_xlat35;
    u_xlat35 = (x_1281 * x_1282);
    let x_1284 : f32 = u_xlat47;
    let x_1285 : f32 = u_xlat35;
    u_xlat47 = (x_1284 * x_1285);
    let x_1289 : i32 = u_xlati46;
    let x_1291 : f32 = x_686.x_AdditionalShadowParams[x_1289].w;
    u_xlati35 = i32(x_1291);
    let x_1294 : i32 = u_xlati35;
    u_xlatb49 = (x_1294 >= 0i);
    let x_1296 : bool = u_xlatb49;
    if (x_1296) {
      let x_1300 : i32 = u_xlati46;
      let x_1302 : f32 = x_686.x_AdditionalShadowParams[x_1300].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1302, x_1302, x_1302, x_1302))));
      let x_1306 : bool = u_xlatb49;
      if (x_1306) {
        let x_1311 : vec3<f32> = u_xlat10;
        let x_1314 : vec3<f32> = u_xlat10;
        let x_1317 : vec4<bool> = (abs(vec4<f32>(x_1311.z, x_1311.z, x_1311.y, x_1311.z)) >= abs(vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.x)));
        let x_1319 : vec3<bool> = vec3<bool>(x_1317.x, x_1317.y, x_1317.z);
        let x_1320 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
        let x_1323 : bool = u_xlatb11.y;
        let x_1325 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1323 & x_1325);
        let x_1327 : vec3<f32> = u_xlat10;
        let x_1330 : vec4<bool> = (-(vec4<f32>(x_1327.z, x_1327.y, x_1327.z, x_1327.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1331 : vec3<bool> = vec3<bool>(x_1330.x, x_1330.y, x_1330.w);
        let x_1332 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1331.x, x_1331.y, x_1332.z, x_1331.z);
        let x_1336 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1336);
        let x_1341 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1341);
        let x_1347 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1347);
        let x_1350 : bool = u_xlatb11.z;
        if (x_1350) {
          let x_1355 : f32 = u_xlat11.y;
          x_1351 = x_1355;
        } else {
          let x_1357 : f32 = u_xlat51;
          x_1351 = x_1357;
        }
        let x_1358 : f32 = x_1351;
        u_xlat51 = x_1358;
        let x_1359 : bool = u_xlatb49;
        if (x_1359) {
          let x_1364 : f32 = u_xlat11.x;
          x_1360 = x_1364;
        } else {
          let x_1366 : f32 = u_xlat51;
          x_1360 = x_1366;
        }
        let x_1367 : f32 = x_1360;
        u_xlat49 = x_1367;
        let x_1368 : i32 = u_xlati46;
        let x_1370 : f32 = x_686.x_AdditionalShadowParams[x_1368].w;
        u_xlat51 = trunc(x_1370);
        let x_1372 : f32 = u_xlat49;
        let x_1373 : f32 = u_xlat51;
        u_xlat49 = (x_1372 + x_1373);
        let x_1375 : f32 = u_xlat49;
        u_xlati35 = i32(x_1375);
      }
      let x_1377 : i32 = u_xlati35;
      u_xlati35 = (x_1377 << bitcast<u32>(2i));
      let x_1379 : vec3<f32> = vs_INTERP7;
      let x_1382 : i32 = u_xlati35;
      let x_1385 : i32 = u_xlati35;
      let x_1389 : vec4<f32> = x_686.x_AdditionalLightsWorldToShadow[((x_1382 + 1i) / 4i)][((x_1385 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1379.y, x_1379.y, x_1379.y, x_1379.y) * x_1389);
      let x_1391 : i32 = u_xlati35;
      let x_1393 : i32 = u_xlati35;
      let x_1396 : vec4<f32> = x_686.x_AdditionalLightsWorldToShadow[(x_1391 / 4i)][(x_1393 % 4i)];
      let x_1397 : vec3<f32> = vs_INTERP7;
      let x_1400 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1396 * vec4<f32>(x_1397.x, x_1397.x, x_1397.x, x_1397.x)) + x_1400);
      let x_1402 : i32 = u_xlati35;
      let x_1405 : i32 = u_xlati35;
      let x_1409 : vec4<f32> = x_686.x_AdditionalLightsWorldToShadow[((x_1402 + 2i) / 4i)][((x_1405 + 2i) % 4i)];
      let x_1410 : vec3<f32> = vs_INTERP7;
      let x_1413 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1409 * vec4<f32>(x_1410.z, x_1410.z, x_1410.z, x_1410.z)) + x_1413);
      let x_1415 : vec4<f32> = u_xlat11;
      let x_1416 : i32 = u_xlati35;
      let x_1419 : i32 = u_xlati35;
      let x_1423 : vec4<f32> = x_686.x_AdditionalLightsWorldToShadow[((x_1416 + 3i) / 4i)][((x_1419 + 3i) % 4i)];
      u_xlat11 = (x_1415 + x_1423);
      let x_1425 : vec4<f32> = u_xlat11;
      let x_1427 : vec4<f32> = u_xlat11;
      let x_1429 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) / vec3<f32>(x_1427.w, x_1427.w, x_1427.w));
      let x_1430 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
      let x_1433 : vec4<f32> = u_xlat11;
      let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
      let x_1436 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
      let x_1444 : vec3<f32> = txVec1;
      let x_1446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
      u_xlat35 = x_1446;
      let x_1447 : i32 = u_xlati46;
      let x_1449 : f32 = x_686.x_AdditionalShadowParams[x_1447].x;
      u_xlat49 = (1.0f + -(x_1449));
      let x_1452 : f32 = u_xlat35;
      let x_1453 : i32 = u_xlati46;
      let x_1455 : f32 = x_686.x_AdditionalShadowParams[x_1453].x;
      let x_1457 : f32 = u_xlat49;
      u_xlat35 = ((x_1452 * x_1455) + x_1457);
      let x_1460 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1460);
      let x_1464 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1464 >= 1.0f);
      let x_1466 : bool = u_xlatb49;
      let x_1467 : bool = u_xlatb51;
      u_xlatb49 = (x_1466 | x_1467);
      let x_1469 : bool = u_xlatb49;
      let x_1470 : f32 = u_xlat35;
      u_xlat35 = select(x_1470, 1.0f, x_1469);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1473 : f32 = u_xlat35;
    u_xlat49 = (-(x_1473) + 1.0f);
    let x_1477 : f32 = u_xlat2.x;
    let x_1478 : f32 = u_xlat49;
    let x_1480 : f32 = u_xlat35;
    u_xlat35 = ((x_1477 * x_1478) + x_1480);
    let x_1483 : i32 = u_xlati46;
    u_xlati49 = (1i << bitcast<u32>((x_1483 & 31i)));
    let x_1487 : i32 = u_xlati49;
    let x_1490 : f32 = x_752.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1487) & bitcast<u32>(x_1490)));
    let x_1494 : i32 = u_xlati49;
    if ((x_1494 != 0i)) {
      let x_1498 : i32 = u_xlati46;
      let x_1500 : f32 = x_752.x_AdditionalLightsLightTypes[x_1498].el;
      u_xlati49 = i32(x_1500);
      let x_1503 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1503 != 0i));
      let x_1507 : i32 = u_xlati46;
      u_xlati52 = (x_1507 << bitcast<u32>(2i));
      let x_1509 : i32 = u_xlati51;
      if ((x_1509 != 0i)) {
        let x_1513 : vec3<f32> = vs_INTERP7;
        let x_1515 : i32 = u_xlati52;
        let x_1518 : i32 = u_xlati52;
        let x_1522 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1515 + 1i) / 4i)][((x_1518 + 1i) % 4i)];
        let x_1524 : vec3<f32> = (vec3<f32>(x_1513.y, x_1513.y, x_1513.y) * vec3<f32>(x_1522.x, x_1522.y, x_1522.w));
        let x_1525 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
        let x_1527 : i32 = u_xlati52;
        let x_1529 : i32 = u_xlati52;
        let x_1532 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[(x_1527 / 4i)][(x_1529 % 4i)];
        let x_1534 : vec3<f32> = vs_INTERP7;
        let x_1537 : vec4<f32> = u_xlat11;
        let x_1539 : vec3<f32> = ((vec3<f32>(x_1532.x, x_1532.y, x_1532.w) * vec3<f32>(x_1534.x, x_1534.x, x_1534.x)) + vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
        let x_1540 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
        let x_1542 : i32 = u_xlati52;
        let x_1545 : i32 = u_xlati52;
        let x_1549 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1542 + 2i) / 4i)][((x_1545 + 2i) % 4i)];
        let x_1551 : vec3<f32> = vs_INTERP7;
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1556 : vec3<f32> = ((vec3<f32>(x_1549.x, x_1549.y, x_1549.w) * vec3<f32>(x_1551.z, x_1551.z, x_1551.z)) + vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
        let x_1559 : vec4<f32> = u_xlat11;
        let x_1561 : i32 = u_xlati52;
        let x_1564 : i32 = u_xlati52;
        let x_1568 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1561 + 3i) / 4i)][((x_1564 + 3i) % 4i)];
        let x_1570 : vec3<f32> = (vec3<f32>(x_1559.x, x_1559.y, x_1559.z) + vec3<f32>(x_1568.x, x_1568.y, x_1568.w));
        let x_1571 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
        let x_1573 : vec4<f32> = u_xlat11;
        let x_1575 : vec4<f32> = u_xlat11;
        let x_1577 : vec2<f32> = (vec2<f32>(x_1573.x, x_1573.y) / vec2<f32>(x_1575.z, x_1575.z));
        let x_1578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat11;
        let x_1583 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1584 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat11;
        let x_1590 : vec2<f32> = clamp(vec2<f32>(x_1586.x, x_1586.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1591 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1590.x, x_1590.y, x_1591.z, x_1591.w);
        let x_1593 : i32 = u_xlati46;
        let x_1595 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[x_1593];
        let x_1597 : vec4<f32> = u_xlat11;
        let x_1600 : i32 = u_xlati46;
        let x_1602 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[x_1600];
        let x_1604 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.y) * vec2<f32>(x_1597.x, x_1597.y)) + vec2<f32>(x_1602.z, x_1602.w));
        let x_1605 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
      } else {
        let x_1608 : i32 = u_xlati49;
        u_xlatb49 = (x_1608 == 1i);
        let x_1610 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1610);
        let x_1612 : i32 = u_xlati49;
        if ((x_1612 != 0i)) {
          let x_1617 : vec3<f32> = vs_INTERP7;
          let x_1619 : i32 = u_xlati52;
          let x_1622 : i32 = u_xlati52;
          let x_1626 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1619 + 1i) / 4i)][((x_1622 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1617.y, x_1617.y) * vec2<f32>(x_1626.x, x_1626.y));
          let x_1629 : i32 = u_xlati52;
          let x_1631 : i32 = u_xlati52;
          let x_1634 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[(x_1629 / 4i)][(x_1631 % 4i)];
          let x_1636 : vec3<f32> = vs_INTERP7;
          let x_1639 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1636.x, x_1636.x)) + x_1639);
          let x_1641 : i32 = u_xlati52;
          let x_1644 : i32 = u_xlati52;
          let x_1648 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1641 + 2i) / 4i)][((x_1644 + 2i) % 4i)];
          let x_1650 : vec3<f32> = vs_INTERP7;
          let x_1653 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1648.x, x_1648.y) * vec2<f32>(x_1650.z, x_1650.z)) + x_1653);
          let x_1655 : vec2<f32> = u_xlat39;
          let x_1656 : i32 = u_xlati52;
          let x_1659 : i32 = u_xlati52;
          let x_1663 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1656 + 3i) / 4i)][((x_1659 + 3i) % 4i)];
          u_xlat39 = (x_1655 + vec2<f32>(x_1663.x, x_1663.y));
          let x_1666 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1666 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1669 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1669);
          let x_1671 : i32 = u_xlati46;
          let x_1673 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[x_1671];
          let x_1675 : vec2<f32> = u_xlat39;
          let x_1677 : i32 = u_xlati46;
          let x_1679 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[x_1677];
          let x_1681 : vec2<f32> = ((vec2<f32>(x_1673.x, x_1673.y) * x_1675) + vec2<f32>(x_1679.z, x_1679.w));
          let x_1682 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
        } else {
          let x_1686 : vec3<f32> = vs_INTERP7;
          let x_1688 : i32 = u_xlati52;
          let x_1691 : i32 = u_xlati52;
          let x_1695 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1688 + 1i) / 4i)][((x_1691 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y) * x_1695);
          let x_1697 : i32 = u_xlati52;
          let x_1699 : i32 = u_xlati52;
          let x_1702 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[(x_1697 / 4i)][(x_1699 % 4i)];
          let x_1703 : vec3<f32> = vs_INTERP7;
          let x_1706 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1702 * vec4<f32>(x_1703.x, x_1703.x, x_1703.x, x_1703.x)) + x_1706);
          let x_1708 : i32 = u_xlati52;
          let x_1711 : i32 = u_xlati52;
          let x_1715 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1708 + 2i) / 4i)][((x_1711 + 2i) % 4i)];
          let x_1716 : vec3<f32> = vs_INTERP7;
          let x_1719 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1715 * vec4<f32>(x_1716.z, x_1716.z, x_1716.z, x_1716.z)) + x_1719);
          let x_1721 : vec4<f32> = u_xlat12;
          let x_1722 : i32 = u_xlati52;
          let x_1725 : i32 = u_xlati52;
          let x_1729 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_1722 + 3i) / 4i)][((x_1725 + 3i) % 4i)];
          u_xlat12 = (x_1721 + x_1729);
          let x_1731 : vec4<f32> = u_xlat12;
          let x_1733 : vec4<f32> = u_xlat12;
          let x_1735 : vec3<f32> = (vec3<f32>(x_1731.x, x_1731.y, x_1731.z) / vec3<f32>(x_1733.w, x_1733.w, x_1733.w));
          let x_1736 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
          let x_1738 : vec4<f32> = u_xlat12;
          let x_1740 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1738.x, x_1738.y, x_1738.z), vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
          let x_1743 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1743);
          let x_1745 : f32 = u_xlat49;
          let x_1747 : vec4<f32> = u_xlat12;
          let x_1749 : vec3<f32> = (vec3<f32>(x_1745, x_1745, x_1745) * vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
          let x_1750 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
          let x_1752 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1752.x, x_1752.y, x_1752.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1756 : f32 = u_xlat49;
          u_xlat49 = max(x_1756, 0.00000099999999747524f);
          let x_1759 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1759);
          let x_1762 : f32 = u_xlat49;
          let x_1764 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.z, x_1764.x, x_1764.y));
          let x_1768 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1768);
          let x_1772 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1772, 0.0f, 1.0f);
          let x_1776 : vec3<f32> = u_xlat13;
          let x_1778 : vec4<bool> = (vec4<f32>(x_1776.y, x_1776.z, x_1776.y, x_1776.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1778.x, x_1778.y);
          let x_1781 : bool = u_xlatb39.x;
          if (x_1781) {
            let x_1786 : f32 = u_xlat13.x;
            x_1782 = x_1786;
          } else {
            let x_1789 : f32 = u_xlat13.x;
            x_1782 = -(x_1789);
          }
          let x_1791 : f32 = x_1782;
          u_xlat39.x = x_1791;
          let x_1794 : bool = u_xlatb39.y;
          if (x_1794) {
            let x_1799 : f32 = u_xlat13.x;
            x_1795 = x_1799;
          } else {
            let x_1802 : f32 = u_xlat13.x;
            x_1795 = -(x_1802);
          }
          let x_1804 : f32 = x_1795;
          u_xlat39.y = x_1804;
          let x_1806 : vec4<f32> = u_xlat12;
          let x_1808 : f32 = u_xlat49;
          let x_1811 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1806.x, x_1806.y) * vec2<f32>(x_1808, x_1808)) + x_1811);
          let x_1813 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1813 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1816 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1816, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1820 : i32 = u_xlati46;
          let x_1822 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[x_1820];
          let x_1824 : vec2<f32> = u_xlat39;
          let x_1826 : i32 = u_xlati46;
          let x_1828 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[x_1826];
          let x_1830 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.y) * x_1824) + vec2<f32>(x_1828.z, x_1828.w));
          let x_1831 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1830.x, x_1830.y, x_1831.z, x_1831.w);
        }
      }
      let x_1838 : vec4<f32> = u_xlat11;
      let x_1840 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1838.x, x_1838.y), 0.0f);
      u_xlat11 = x_1840;
      let x_1842 : bool = u_xlatb7.y;
      if (x_1842) {
        let x_1847 : f32 = u_xlat11.w;
        x_1843 = x_1847;
      } else {
        let x_1850 : f32 = u_xlat11.x;
        x_1843 = x_1850;
      }
      let x_1851 : f32 = x_1843;
      u_xlat49 = x_1851;
      let x_1853 : bool = u_xlatb7.x;
      if (x_1853) {
        let x_1857 : vec4<f32> = u_xlat11;
        x_1854 = vec3<f32>(x_1857.x, x_1857.y, x_1857.z);
      } else {
        let x_1860 : f32 = u_xlat49;
        x_1854 = vec3<f32>(x_1860, x_1860, x_1860);
      }
      let x_1862 : vec3<f32> = x_1854;
      let x_1863 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1869 : vec4<f32> = u_xlat11;
    let x_1871 : i32 = u_xlati46;
    let x_1873 : vec4<f32> = x_1219.x_AdditionalLightsColor[x_1871];
    let x_1875 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1878 : f32 = u_xlat47;
    let x_1879 : f32 = u_xlat35;
    u_xlat46 = (x_1878 * x_1879);
    let x_1881 : vec4<f32> = u_xlat1;
    let x_1883 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), x_1883);
    let x_1885 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1885, 0.0f, 1.0f);
    let x_1887 : f32 = u_xlat46;
    let x_1888 : f32 = u_xlat47;
    u_xlat46 = (x_1887 * x_1888);
    let x_1890 : f32 = u_xlat46;
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1897 : vec3<f32> = u_xlat9;
    let x_1898 : f32 = u_xlat48;
    let x_1901 : vec4<f32> = u_xlat3;
    u_xlat9 = ((x_1897 * vec3<f32>(x_1898, x_1898, x_1898)) + vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : vec3<f32> = u_xlat9;
    let x_1905 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1904, x_1905);
    let x_1907 : f32 = u_xlat46;
    u_xlat46 = max(x_1907, 1.17549435e-38f);
    let x_1909 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1909);
    let x_1911 : f32 = u_xlat46;
    let x_1913 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1911, x_1911, x_1911) * x_1913);
    let x_1915 : vec4<f32> = u_xlat1;
    let x_1917 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1915.x, x_1915.y, x_1915.z), x_1917);
    let x_1919 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1919, 0.0f, 1.0f);
    let x_1921 : vec3<f32> = u_xlat10;
    let x_1922 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1921, x_1922);
    let x_1924 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1924, 0.0f, 1.0f);
    let x_1926 : f32 = u_xlat46;
    let x_1927 : f32 = u_xlat46;
    u_xlat46 = (x_1926 * x_1927);
    let x_1929 : f32 = u_xlat46;
    let x_1931 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1929 * x_1931) + 1.00001001358032226562f);
    let x_1934 : f32 = u_xlat47;
    let x_1935 : f32 = u_xlat47;
    u_xlat47 = (x_1934 * x_1935);
    let x_1937 : f32 = u_xlat46;
    let x_1938 : f32 = u_xlat46;
    u_xlat46 = (x_1937 * x_1938);
    let x_1940 : f32 = u_xlat47;
    u_xlat47 = max(x_1940, 0.10000000149011611938f);
    let x_1942 : f32 = u_xlat46;
    let x_1943 : f32 = u_xlat47;
    u_xlat46 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat45;
    let x_1946 : f32 = u_xlat46;
    u_xlat46 = (x_1945 * x_1946);
    let x_1948 : f32 = u_xlat16;
    let x_1949 : f32 = u_xlat46;
    u_xlat46 = (x_1948 / x_1949);
    let x_1951 : vec4<f32> = u_xlat0;
    let x_1953 : f32 = u_xlat46;
    let x_1956 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1951.x, x_1951.y, x_1951.z) * vec3<f32>(x_1953, x_1953, x_1953)) + x_1956);
    let x_1958 : vec3<f32> = u_xlat9;
    let x_1959 : vec4<f32> = u_xlat11;
    let x_1962 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1958 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z)) + x_1962);

    continuing {
      let x_1964 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1964 + bitcast<u32>(1i));
    }
  }
  let x_1966 : vec4<f32> = u_xlat4;
  let x_1968 : f32 = u_xlat30;
  let x_1971 : vec4<f32> = u_xlat6;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1966.x, x_1966.y, x_1966.z) * vec3<f32>(x_1968, x_1968, x_1968)) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec3<f32> = u_xlat22;
  let x_1977 : vec4<f32> = u_xlat0;
  let x_1979 : vec3<f32> = (x_1976 + vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1982 : f32 = u_xlat42;
  let x_1983 : f32 = u_xlat42;
  u_xlat42 = (x_1982 * -(x_1983));
  let x_1986 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1986);
  let x_1988 : vec4<f32> = u_xlat0;
  let x_1991 : vec4<f32> = x_29.unity_FogColor;
  let x_1994 : vec3<f32> = (vec3<f32>(x_1988.x, x_1988.y, x_1988.z) + -(vec3<f32>(x_1991.x, x_1991.y, x_1991.z)));
  let x_1995 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1999 : f32 = u_xlat42;
  let x_2001 : vec4<f32> = u_xlat0;
  let x_2005 : vec4<f32> = x_29.unity_FogColor;
  let x_2007 : vec3<f32> = ((vec3<f32>(x_1999, x_1999, x_1999) * vec3<f32>(x_2001.x, x_2001.y, x_2001.z)) + vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


