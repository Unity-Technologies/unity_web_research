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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat77 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb30 : bool;

@group(1) @binding(3) var<uniform> x_309 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb55 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1720 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_1954 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_123 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1613 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2104 : f32;
  var x_2115 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3447 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_83 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_89) + x_94);
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = u_xlat2;
  u_xlat51 = dot(x_97, x_98);
  let x_100 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_100);
  let x_102 : f32 = u_xlat51;
  let x_104 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_102, x_102, x_102) * x_104);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_110;
  let x_113 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_113;
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_118;
  let x_121 : bool = u_xlatb26;
  if (x_121) {
    let x_126 : vec3<f32> = u_xlat2;
    x_123 = x_126;
  } else {
    let x_128 : vec4<f32> = u_xlat3;
    x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  }
  let x_130 : vec3<f32> = x_123;
  u_xlat26 = x_130;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  let x_133 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_132, x_133);
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142);
  let x_147 : f32 = vs_TEXCOORD7.y;
  let x_149 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat77 = (x_147 * x_149);
  let x_152 : f32 = x_29.unity_MatrixV[0i].z;
  let x_154 : f32 = vs_TEXCOORD7.x;
  let x_156 : f32 = u_xlat77;
  u_xlat77 = ((x_152 * x_154) + x_156);
  let x_159 : f32 = x_29.unity_MatrixV[2i].z;
  let x_161 : f32 = vs_TEXCOORD7.z;
  let x_163 : f32 = u_xlat77;
  u_xlat77 = ((x_159 * x_161) + x_163);
  let x_165 : f32 = u_xlat77;
  let x_168 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat77 = (x_165 + x_168);
  let x_170 : f32 = u_xlat77;
  let x_174 : f32 = x_29.x_ProjectionParams.y;
  u_xlat77 = (-(x_170) + -(x_174));
  let x_177 : f32 = u_xlat77;
  u_xlat77 = max(x_177, 0.0f);
  let x_179 : f32 = u_xlat77;
  let x_182 : f32 = x_29.unity_FogParams.x;
  u_xlat77 = (x_179 * x_182);
  let x_189 : vec4<f32> = vs_TEXCOORD0;
  let x_192 : f32 = x_29.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_189.z, x_189.w), x_192);
  u_xlat3 = x_193;
  let x_199 : vec4<f32> = vs_TEXCOORD0;
  let x_202 : f32 = x_29.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_199.z, x_199.w), x_202);
  u_xlat4 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  let x_205 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_212, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : f32 = u_xlat3.x;
  u_xlat3.x = (x_218 + 0.5f);
  let x_222 : vec4<f32> = u_xlat3;
  let x_224 : vec3<f32> = u_xlat4;
  let x_225 : vec3<f32> = (vec3<f32>(x_222.x, x_222.x, x_222.x) * x_224);
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : f32 = u_xlat3.w;
  u_xlat78 = max(x_230, 0.00009999999747378752f);
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : f32 = u_xlat78;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) / vec3<f32>(x_235, x_235, x_235));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : f32 = u_xlat1;
  u_xlat78 = ((-(x_240) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_245 : f32 = u_xlat78;
  u_xlat4.x = (-(x_245) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat78;
  u_xlat29 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat78 = (x_277 * x_278);
  let x_280 : f32 = u_xlat78;
  u_xlat78 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat78;
  let x_285 : f32 = u_xlat78;
  u_xlat5 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_291 : f32 = u_xlat4.x;
  u_xlat75 = (x_289 + x_291);
  let x_293 : f32 = u_xlat75;
  u_xlat75 = clamp(x_293, 0.0f, 1.0f);
  let x_295 : f32 = u_xlat78;
  u_xlat4.x = ((x_295 * 4.0f) + 2.0f);
  let x_312 : f32 = x_309.x_MainLightShadowParams.y;
  u_xlatb30 = (0.0f < x_312);
  let x_314 : bool = u_xlatb30;
  if (x_314) {
    let x_318 : f32 = x_309.x_MainLightShadowParams.y;
    u_xlatb30 = (x_318 == 1.0f);
    let x_320 : bool = u_xlatb30;
    if (x_320) {
      let x_325 : vec4<f32> = vs_TEXCOORD8;
      let x_329 : vec4<f32> = x_309.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.y) + x_329);
      let x_332 : vec4<f32> = u_xlat6;
      let x_333 : vec2<f32> = vec2<f32>(x_332.x, x_332.y);
      let x_335 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_333.x, x_333.y, x_335);
      let x_348 : vec3<f32> = txVec0;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_348.xy, x_348.z);
      u_xlat7.x = x_350;
      let x_353 : vec4<f32> = u_xlat6;
      let x_354 : vec2<f32> = vec2<f32>(x_353.z, x_353.w);
      let x_356 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_354.x, x_354.y, x_356);
      let x_363 : vec3<f32> = txVec1;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_363.xy, x_363.z);
      u_xlat7.y = x_365;
      let x_367 : vec4<f32> = vs_TEXCOORD8;
      let x_370 : vec4<f32> = x_309.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_367.x, x_367.y, x_367.x, x_367.y) + x_370);
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
      let x_376 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec2;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_383.xy, x_383.z);
      u_xlat7.z = x_385;
      let x_388 : vec4<f32> = u_xlat6;
      let x_389 : vec2<f32> = vec2<f32>(x_388.z, x_388.w);
      let x_391 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec3;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_398.xy, x_398.z);
      u_xlat7.w = x_400;
      let x_403 : vec4<f32> = u_xlat7;
      u_xlat30.x = dot(x_403, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_411 : f32 = x_309.x_MainLightShadowParams.y;
      u_xlatb55 = (x_411 == 2.0f);
      let x_413 : bool = u_xlatb55;
      if (x_413) {
        let x_418 : vec4<f32> = vs_TEXCOORD8;
        let x_421 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_421.z, x_421.w)) + vec2<f32>(0.5f, 0.5f));
        let x_426 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_426);
        let x_428 : vec4<f32> = vs_TEXCOORD8;
        let x_431 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_434 : vec2<f32> = u_xlat55;
        let x_436 : vec2<f32> = ((vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_431.z, x_431.w)) + -(x_434));
        let x_437 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
        let x_439 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_439.x, x_439.x, x_439.y, x_439.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_444 : vec4<f32> = u_xlat7;
        let x_446 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_444.x, x_444.x, x_444.z, x_444.z) * vec4<f32>(x_446.x, x_446.x, x_446.z, x_446.z));
        let x_450 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_450.y, x_450.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_455 : vec4<f32> = u_xlat8;
        let x_458 : vec4<f32> = u_xlat6;
        let x_461 : vec2<f32> = ((vec2<f32>(x_455.x, x_455.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_458.x, x_458.y)));
        let x_462 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_461.x, x_462.y, x_461.y, x_462.w);
        let x_464 : vec4<f32> = u_xlat6;
        let x_468 : vec2<f32> = (-(vec2<f32>(x_464.x, x_464.y)) + vec2<f32>(1.0f, 1.0f));
        let x_469 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
        let x_472 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_472.x, x_472.y), vec2<f32>(0.0f, 0.0f));
        let x_476 : vec2<f32> = u_xlat58;
        let x_478 : vec2<f32> = u_xlat58;
        let x_480 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_476) * x_478) + vec2<f32>(x_480.x, x_480.y));
        let x_483 : vec4<f32> = u_xlat6;
        let x_485 : vec2<f32> = max(vec2<f32>(x_483.x, x_483.y), vec2<f32>(0.0f, 0.0f));
        let x_486 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat6;
        let x_491 : vec4<f32> = u_xlat6;
        let x_494 : vec4<f32> = u_xlat7;
        let x_496 : vec2<f32> = ((-(vec2<f32>(x_488.x, x_488.y)) * vec2<f32>(x_491.x, x_491.y)) + vec2<f32>(x_494.y, x_494.w));
        let x_497 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_499 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_499 + vec2<f32>(1.0f, 1.0f));
        let x_501 : vec4<f32> = u_xlat6;
        let x_503 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) + vec2<f32>(1.0f, 1.0f));
        let x_504 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_507 : vec4<f32> = u_xlat7;
        let x_511 : vec2<f32> = (vec2<f32>(x_507.x, x_507.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_512 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_515 : vec4<f32> = u_xlat8;
        let x_517 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_518 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec2<f32> = u_xlat58;
        let x_521 : vec2<f32> = (x_520 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_522 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_525 : vec4<f32> = u_xlat6;
        let x_527 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_528 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_530 : vec4<f32> = u_xlat7;
        let x_532 : vec2<f32> = (vec2<f32>(x_530.y, x_530.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_533 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_536 : f32 = u_xlat8.x;
        u_xlat9.z = x_536;
        let x_539 : f32 = u_xlat6.x;
        u_xlat9.w = x_539;
        let x_542 : f32 = u_xlat11.x;
        u_xlat10.z = x_542;
        let x_545 : f32 = u_xlat56.x;
        u_xlat10.w = x_545;
        let x_547 : vec4<f32> = u_xlat9;
        let x_549 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_547.z, x_547.w, x_547.x, x_547.z) + vec4<f32>(x_549.z, x_549.w, x_549.x, x_549.z));
        let x_553 : f32 = u_xlat9.y;
        u_xlat8.z = x_553;
        let x_556 : f32 = u_xlat6.y;
        u_xlat8.w = x_556;
        let x_559 : f32 = u_xlat10.y;
        u_xlat11.z = x_559;
        let x_562 : f32 = u_xlat56.y;
        u_xlat11.w = x_562;
        let x_564 : vec4<f32> = u_xlat8;
        let x_566 : vec4<f32> = u_xlat11;
        let x_568 : vec3<f32> = (vec3<f32>(x_564.z, x_564.y, x_564.w) + vec3<f32>(x_566.z, x_566.y, x_566.w));
        let x_569 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat10;
        let x_573 : vec4<f32> = u_xlat7;
        let x_575 : vec3<f32> = (vec3<f32>(x_571.x, x_571.z, x_571.w) / vec3<f32>(x_573.z, x_573.w, x_573.y));
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat8;
        let x_583 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
        let x_586 : vec4<f32> = u_xlat11;
        let x_588 : vec4<f32> = u_xlat6;
        let x_590 : vec3<f32> = (vec3<f32>(x_586.z, x_586.y, x_586.w) / vec3<f32>(x_588.x, x_588.y, x_588.z));
        let x_591 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
        let x_593 : vec4<f32> = u_xlat9;
        let x_595 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat8;
        let x_601 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_603 : vec3<f32> = (vec3<f32>(x_598.y, x_598.x, x_598.z) * vec3<f32>(x_601.x, x_601.x, x_601.x));
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat9;
        let x_609 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_611 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(x_609.y, x_609.y, x_609.y));
        let x_612 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
        let x_615 : f32 = u_xlat9.x;
        u_xlat8.w = x_615;
        let x_617 : vec2<f32> = u_xlat55;
        let x_620 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.y, x_623.w, x_623.x, x_623.w));
        let x_626 : vec2<f32> = u_xlat55;
        let x_628 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat8;
        let x_633 : vec2<f32> = ((x_626 * vec2<f32>(x_628.x, x_628.y)) + vec2<f32>(x_631.z, x_631.w));
        let x_634 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_637 : f32 = u_xlat8.y;
        u_xlat9.w = x_637;
        let x_639 : vec4<f32> = u_xlat9;
        let x_640 : vec2<f32> = vec2<f32>(x_639.y, x_639.z);
        let x_641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_640.x, x_641.z, x_640.y);
        let x_644 : vec2<f32> = u_xlat55;
        let x_647 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_644.x, x_644.y, x_644.x, x_644.y) * vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y)) + vec4<f32>(x_650.x, x_650.y, x_650.z, x_650.y));
        let x_653 : vec2<f32> = u_xlat55;
        let x_656 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_659 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y) * vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y)) + vec4<f32>(x_659.w, x_659.y, x_659.w, x_659.z));
        let x_662 : vec2<f32> = u_xlat55;
        let x_665 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y) * vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y)) + vec4<f32>(x_668.x, x_668.w, x_668.z, x_668.w));
        let x_672 : vec4<f32> = u_xlat6;
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_672.x, x_672.x, x_672.x, x_672.y) * vec4<f32>(x_674.z, x_674.w, x_674.y, x_674.z));
        let x_678 : vec4<f32> = u_xlat6;
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_678.y, x_678.y, x_678.z, x_678.z) * x_680);
        let x_683 : f32 = u_xlat6.z;
        let x_685 : f32 = u_xlat7.y;
        u_xlat55.x = (x_683 * x_685);
        let x_689 : vec4<f32> = u_xlat10;
        let x_690 : vec2<f32> = vec2<f32>(x_689.x, x_689.y);
        let x_692 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_690.x, x_690.y, x_692);
        let x_700 : vec3<f32> = txVec4;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
        u_xlat80 = x_702;
        let x_704 : vec4<f32> = u_xlat10;
        let x_705 : vec2<f32> = vec2<f32>(x_704.z, x_704.w);
        let x_707 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec5;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat6.x = x_716;
        let x_719 : f32 = u_xlat6.x;
        let x_721 : f32 = u_xlat13.y;
        u_xlat6.x = (x_719 * x_721);
        let x_725 : f32 = u_xlat13.x;
        let x_726 : f32 = u_xlat80;
        let x_729 : f32 = u_xlat6.x;
        u_xlat80 = ((x_725 * x_726) + x_729);
        let x_732 : vec4<f32> = u_xlat11;
        let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
        let x_735 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_733.x, x_733.y, x_735);
        let x_742 : vec3<f32> = txVec6;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
        u_xlat6.x = x_744;
        let x_747 : f32 = u_xlat13.z;
        let x_749 : f32 = u_xlat6.x;
        let x_751 : f32 = u_xlat80;
        u_xlat80 = ((x_747 * x_749) + x_751);
        let x_754 : vec4<f32> = u_xlat9;
        let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
        let x_757 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec7;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_764.xy, x_764.z);
        u_xlat6.x = x_766;
        let x_769 : f32 = u_xlat13.w;
        let x_771 : f32 = u_xlat6.x;
        let x_773 : f32 = u_xlat80;
        u_xlat80 = ((x_769 * x_771) + x_773);
        let x_776 : vec4<f32> = u_xlat12;
        let x_777 : vec2<f32> = vec2<f32>(x_776.x, x_776.y);
        let x_779 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec8;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_786.xy, x_786.z);
        u_xlat6.x = x_788;
        let x_791 : f32 = u_xlat14.x;
        let x_793 : f32 = u_xlat6.x;
        let x_795 : f32 = u_xlat80;
        u_xlat80 = ((x_791 * x_793) + x_795);
        let x_798 : vec4<f32> = u_xlat12;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec9;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_808.xy, x_808.z);
        u_xlat6.x = x_810;
        let x_813 : f32 = u_xlat14.y;
        let x_815 : f32 = u_xlat6.x;
        let x_817 : f32 = u_xlat80;
        u_xlat80 = ((x_813 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec10;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat6.x = x_832;
        let x_835 : f32 = u_xlat14.z;
        let x_837 : f32 = u_xlat6.x;
        let x_839 : f32 = u_xlat80;
        u_xlat80 = ((x_835 * x_837) + x_839);
        let x_842 : vec4<f32> = u_xlat8;
        let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
        let x_845 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec11;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_852.xy, x_852.z);
        u_xlat6.x = x_854;
        let x_857 : f32 = u_xlat14.w;
        let x_859 : f32 = u_xlat6.x;
        let x_861 : f32 = u_xlat80;
        u_xlat80 = ((x_857 * x_859) + x_861);
        let x_864 : vec4<f32> = u_xlat8;
        let x_865 : vec2<f32> = vec2<f32>(x_864.z, x_864.w);
        let x_867 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec12;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat6.x = x_876;
        let x_879 : f32 = u_xlat55.x;
        let x_881 : f32 = u_xlat6.x;
        let x_883 : f32 = u_xlat80;
        u_xlat30.x = ((x_879 * x_881) + x_883);
      } else {
        let x_887 : vec4<f32> = vs_TEXCOORD8;
        let x_890 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(x_890.z, x_890.w)) + vec2<f32>(0.5f, 0.5f));
        let x_894 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_894);
        let x_896 : vec4<f32> = vs_TEXCOORD8;
        let x_899 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_902 : vec2<f32> = u_xlat55;
        let x_904 : vec2<f32> = ((vec2<f32>(x_896.x, x_896.y) * vec2<f32>(x_899.z, x_899.w)) + -(x_902));
        let x_905 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_907.x, x_907.x, x_907.y, x_907.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_910 : vec4<f32> = u_xlat7;
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_910.x, x_910.x, x_910.z, x_910.z) * vec4<f32>(x_912.x, x_912.x, x_912.z, x_912.z));
        let x_915 : vec4<f32> = u_xlat8;
        let x_919 : vec2<f32> = (vec2<f32>(x_915.y, x_915.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_920.x, x_919.x, x_920.z, x_919.y);
        let x_922 : vec4<f32> = u_xlat8;
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_922.x, x_922.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_925.x, x_925.y)));
        let x_929 : vec4<f32> = u_xlat6;
        let x_932 : vec2<f32> = (-(vec2<f32>(x_929.x, x_929.y)) + vec2<f32>(1.0f, 1.0f));
        let x_933 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_932.x, x_933.y, x_932.y, x_933.w);
        let x_935 : vec4<f32> = u_xlat6;
        let x_937 : vec2<f32> = min(vec2<f32>(x_935.x, x_935.y), vec2<f32>(0.0f, 0.0f));
        let x_938 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat8;
        let x_943 : vec4<f32> = u_xlat8;
        let x_946 : vec4<f32> = u_xlat7;
        let x_948 : vec2<f32> = ((-(vec2<f32>(x_940.x, x_940.y)) * vec2<f32>(x_943.x, x_943.y)) + vec2<f32>(x_946.x, x_946.z));
        let x_949 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_948.x, x_949.y, x_948.y, x_949.w);
        let x_951 : vec4<f32> = u_xlat6;
        let x_953 : vec2<f32> = max(vec2<f32>(x_951.x, x_951.y), vec2<f32>(0.0f, 0.0f));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = u_xlat8;
        let x_962 : vec4<f32> = u_xlat7;
        let x_964 : vec2<f32> = ((-(vec2<f32>(x_956.x, x_956.y)) * vec2<f32>(x_959.x, x_959.y)) + vec2<f32>(x_962.y, x_962.w));
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_967 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_967 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_971 : f32 = u_xlat7.y;
        u_xlat8.z = (x_971 * 0.08163200318813323975f);
        let x_975 : vec2<f32> = u_xlat56;
        let x_978 : vec2<f32> = (vec2<f32>(x_975.y, x_975.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_981.x, x_981.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_985 : f32 = u_xlat7.w;
        u_xlat10.z = (x_985 * 0.08163200318813323975f);
        let x_989 : f32 = u_xlat10.y;
        u_xlat8.x = x_989;
        let x_991 : vec4<f32> = u_xlat6;
        let x_998 : vec2<f32> = ((vec2<f32>(x_991.x, x_991.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1005 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1006 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1005.x, x_1006.y, x_1005.y, x_1006.w);
        let x_1009 : f32 = u_xlat56.x;
        u_xlat7.y = x_1009;
        let x_1012 : f32 = u_xlat9.y;
        u_xlat7.w = x_1012;
        let x_1014 : vec4<f32> = u_xlat7;
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1014 + x_1015);
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1020 : vec2<f32> = ((vec2<f32>(x_1017.y, x_1017.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1021.x, x_1020.x, x_1021.z, x_1020.y);
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1026 : vec2<f32> = ((vec2<f32>(x_1023.y, x_1023.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1027.y, x_1026.y, x_1027.w);
        let x_1030 : f32 = u_xlat56.y;
        u_xlat9.y = x_1030;
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1032 + x_1033);
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1035 / x_1036);
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1038 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1052 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1049.w, x_1049.x, x_1049.y, x_1049.z) * vec4<f32>(x_1052.x, x_1052.x, x_1052.x, x_1052.x));
        let x_1055 : vec4<f32> = u_xlat9;
        let x_1058 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1055.x, x_1055.w, x_1055.y, x_1055.z) * vec4<f32>(x_1058.y, x_1058.y, x_1058.y, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1062 : vec3<f32> = vec3<f32>(x_1061.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1062.x, x_1063.y, x_1062.y, x_1062.z);
        let x_1066 : f32 = u_xlat9.x;
        u_xlat10.y = x_1066;
        let x_1068 : vec2<f32> = u_xlat55;
        let x_1071 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y) * vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y)) + vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1074.y));
        let x_1077 : vec2<f32> = u_xlat55;
        let x_1079 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat10;
        let x_1084 : vec2<f32> = ((x_1077 * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1082.w, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1088 : f32 = u_xlat10.y;
        u_xlat7.y = x_1088;
        let x_1091 : f32 = u_xlat9.z;
        u_xlat10.y = x_1091;
        let x_1093 : vec2<f32> = u_xlat55;
        let x_1096 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1099.y));
        let x_1103 : vec2<f32> = u_xlat55;
        let x_1105 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1103 * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.w, x_1108.y));
        let x_1112 : f32 = u_xlat10.y;
        u_xlat7.z = x_1112;
        let x_1114 : vec2<f32> = u_xlat55;
        let x_1117 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y) * vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y)) + vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.z));
        let x_1124 : f32 = u_xlat9.w;
        u_xlat10.y = x_1124;
        let x_1127 : vec2<f32> = u_xlat55;
        let x_1130 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y) * vec4<f32>(x_1130.x, x_1130.y, x_1130.x, x_1130.y)) + vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1133.y));
        let x_1137 : vec2<f32> = u_xlat55;
        let x_1139 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1144 : vec2<f32> = ((x_1137 * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1142.w, x_1142.y));
        let x_1145 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1144.x, x_1144.y, x_1145.z);
        let x_1148 : f32 = u_xlat10.y;
        u_xlat7.w = x_1148;
        let x_1151 : vec2<f32> = u_xlat55;
        let x_1153 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1158 : vec2<f32> = ((x_1151 * vec2<f32>(x_1153.x, x_1153.y)) + vec2<f32>(x_1156.x, x_1156.w));
        let x_1159 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1161 : vec4<f32> = u_xlat10;
        let x_1162 : vec3<f32> = vec3<f32>(x_1161.x, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1162.x, x_1163.y, x_1162.y, x_1162.z);
        let x_1165 : vec2<f32> = u_xlat55;
        let x_1168 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y) * vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y)) + vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1171.y));
        let x_1175 : vec2<f32> = u_xlat55;
        let x_1177 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1175 * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.w, x_1180.y));
        let x_1184 : f32 = u_xlat7.x;
        u_xlat9.x = x_1184;
        let x_1186 : vec2<f32> = u_xlat55;
        let x_1188 : vec4<f32> = x_309.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat55 = ((x_1186 * vec2<f32>(x_1188.x, x_1188.y)) + vec2<f32>(x_1191.x, x_1191.y));
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x) * x_1197);
        let x_1200 : vec4<f32> = u_xlat6;
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y) * x_1202);
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1205.z, x_1205.z, x_1205.z, x_1205.z) * x_1207);
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1209.w, x_1209.w, x_1209.w, x_1209.w) * x_1211);
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec13;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat7.x = x_1226;
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1240 : vec3<f32> = txVec14;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat82 = x_1242;
        let x_1243 : f32 = u_xlat82;
        let x_1245 : f32 = u_xlat17.y;
        u_xlat82 = (x_1243 * x_1245);
        let x_1248 : f32 = u_xlat17.x;
        let x_1250 : f32 = u_xlat7.x;
        let x_1252 : f32 = u_xlat82;
        u_xlat7.x = ((x_1248 * x_1250) + x_1252);
        let x_1256 : vec4<f32> = u_xlat12;
        let x_1257 : vec2<f32> = vec2<f32>(x_1256.x, x_1256.y);
        let x_1259 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
        let x_1266 : vec3<f32> = txVec15;
        let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
        u_xlat82 = x_1268;
        let x_1270 : f32 = u_xlat17.z;
        let x_1271 : f32 = u_xlat82;
        let x_1274 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1270 * x_1271) + x_1274);
        let x_1278 : vec4<f32> = u_xlat14;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec16;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat82 = x_1290;
        let x_1292 : f32 = u_xlat17.w;
        let x_1293 : f32 = u_xlat82;
        let x_1296 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1292 * x_1293) + x_1296);
        let x_1300 : vec4<f32> = u_xlat13;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec17;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat82 = x_1312;
        let x_1314 : f32 = u_xlat18.x;
        let x_1315 : f32 = u_xlat82;
        let x_1318 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1314 * x_1315) + x_1318);
        let x_1322 : vec4<f32> = u_xlat13;
        let x_1323 : vec2<f32> = vec2<f32>(x_1322.z, x_1322.w);
        let x_1325 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec18;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1332.xy, x_1332.z);
        u_xlat82 = x_1334;
        let x_1336 : f32 = u_xlat18.y;
        let x_1337 : f32 = u_xlat82;
        let x_1340 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1336 * x_1337) + x_1340);
        let x_1344 : vec2<f32> = u_xlat62;
        let x_1346 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec19;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1353.xy, x_1353.z);
        u_xlat82 = x_1355;
        let x_1357 : f32 = u_xlat18.z;
        let x_1358 : f32 = u_xlat82;
        let x_1361 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1357 * x_1358) + x_1361);
        let x_1365 : vec4<f32> = u_xlat14;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec20;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat82 = x_1377;
        let x_1379 : f32 = u_xlat18.w;
        let x_1380 : f32 = u_xlat82;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1379 * x_1380) + x_1383);
        let x_1387 : vec4<f32> = u_xlat15;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec21;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat82 = x_1399;
        let x_1401 : f32 = u_xlat19.x;
        let x_1402 : f32 = u_xlat82;
        let x_1405 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1401 * x_1402) + x_1405);
        let x_1409 : vec4<f32> = u_xlat15;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec22;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat82 = x_1421;
        let x_1423 : f32 = u_xlat19.y;
        let x_1424 : f32 = u_xlat82;
        let x_1427 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec3<f32> = u_xlat32;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec23;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat32.x = x_1443;
        let x_1446 : f32 = u_xlat19.z;
        let x_1448 : f32 = u_xlat32.x;
        let x_1451 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1446 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat16;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec24;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat32.x = x_1467;
        let x_1470 : f32 = u_xlat19.w;
        let x_1472 : f32 = u_xlat32.x;
        let x_1475 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1470 * x_1472) + x_1475);
        let x_1479 : vec4<f32> = u_xlat10;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec25;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat32.x = x_1491;
        let x_1494 : f32 = u_xlat6.x;
        let x_1496 : f32 = u_xlat32.x;
        let x_1499 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1494 * x_1496) + x_1499);
        let x_1503 : vec4<f32> = u_xlat10;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec26;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat7.x = x_1515;
        let x_1518 : f32 = u_xlat6.y;
        let x_1520 : f32 = u_xlat7.x;
        let x_1523 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1518 * x_1520) + x_1523);
        let x_1527 : vec2<f32> = u_xlat59;
        let x_1529 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1537 : vec3<f32> = txVec27;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat31 = x_1539;
        let x_1541 : f32 = u_xlat6.z;
        let x_1542 : f32 = u_xlat31;
        let x_1545 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1541 * x_1542) + x_1545);
        let x_1549 : vec2<f32> = u_xlat55;
        let x_1551 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec28;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat55.x = x_1560;
        let x_1563 : f32 = u_xlat6.w;
        let x_1565 : f32 = u_xlat55.x;
        let x_1568 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1563 * x_1565) + x_1568);
      }
    }
  } else {
    let x_1573 : vec4<f32> = vs_TEXCOORD8;
    let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
    let x_1576 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
    let x_1583 : vec3<f32> = txVec29;
    let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
    u_xlat30.x = x_1585;
  }
  let x_1588 : f32 = x_309.x_MainLightShadowParams.x;
  u_xlat55.x = (-(x_1588) + 1.0f);
  let x_1593 : f32 = u_xlat30.x;
  let x_1595 : f32 = x_309.x_MainLightShadowParams.x;
  let x_1598 : f32 = u_xlat55.x;
  u_xlat30.x = ((x_1593 * x_1595) + x_1598);
  let x_1602 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (0.0f >= x_1602);
  let x_1606 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (x_1606 >= 1.0f);
  let x_1608 : bool = u_xlatb80;
  let x_1609 : bool = u_xlatb55;
  u_xlatb55 = (x_1608 | x_1609);
  let x_1611 : bool = u_xlatb55;
  if (x_1611) {
    x_1613 = 1.0f;
  } else {
    let x_1618 : f32 = u_xlat30.x;
    x_1613 = x_1618;
  }
  let x_1619 : f32 = x_1613;
  u_xlat30.x = x_1619;
  let x_1621 : vec3<f32> = vs_TEXCOORD7;
  let x_1623 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1625 : vec3<f32> = (x_1621 + -(x_1623));
  let x_1626 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
  let x_1628 : vec4<f32> = u_xlat6;
  let x_1630 : vec4<f32> = u_xlat6;
  u_xlat55.x = dot(vec3<f32>(x_1628.x, x_1628.y, x_1628.z), vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
  let x_1635 : f32 = u_xlat55.x;
  let x_1637 : f32 = x_309.x_MainLightShadowParams.z;
  let x_1640 : f32 = x_309.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1635 * x_1637) + x_1640);
  let x_1642 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1642, 0.0f, 1.0f);
  let x_1645 : f32 = u_xlat30.x;
  u_xlat6.x = (-(x_1645) + 1.0f);
  let x_1649 : f32 = u_xlat80;
  let x_1651 : f32 = u_xlat6.x;
  let x_1654 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1649 * x_1651) + x_1654);
  let x_1657 : vec3<f32> = u_xlat26;
  let x_1659 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(-(x_1657), x_1659);
  let x_1661 : f32 = u_xlat80;
  let x_1662 : f32 = u_xlat80;
  u_xlat80 = (x_1661 + x_1662);
  let x_1664 : vec3<f32> = u_xlat2;
  let x_1665 : f32 = u_xlat80;
  let x_1669 : vec3<f32> = u_xlat26;
  let x_1671 : vec3<f32> = ((x_1664 * -(vec3<f32>(x_1665, x_1665, x_1665))) + -(x_1669));
  let x_1672 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec3<f32> = u_xlat2;
  let x_1675 : vec3<f32> = u_xlat26;
  u_xlat80 = dot(x_1674, x_1675);
  let x_1677 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1677, 0.0f, 1.0f);
  let x_1679 : f32 = u_xlat80;
  u_xlat80 = (-(x_1679) + 1.0f);
  let x_1682 : f32 = u_xlat80;
  let x_1683 : f32 = u_xlat80;
  u_xlat80 = (x_1682 * x_1683);
  let x_1685 : f32 = u_xlat80;
  let x_1686 : f32 = u_xlat80;
  u_xlat80 = (x_1685 * x_1686);
  let x_1689 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1689) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1695 : f32 = u_xlat1;
  let x_1696 : f32 = u_xlat81;
  u_xlat1 = (x_1695 * x_1696);
  let x_1698 : f32 = u_xlat1;
  u_xlat1 = (x_1698 * 6.0f);
  let x_1709 : vec4<f32> = u_xlat6;
  let x_1711 : f32 = u_xlat1;
  let x_1712 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1709.x, x_1709.y, x_1709.z), x_1711);
  u_xlat6 = x_1712;
  let x_1714 : f32 = u_xlat6.w;
  u_xlat1 = (x_1714 + -1.0f);
  let x_1722 : f32 = x_1720.unity_SpecCube0_HDR.w;
  let x_1723 : f32 = u_xlat1;
  u_xlat1 = ((x_1722 * x_1723) + 1.0f);
  let x_1726 : f32 = u_xlat1;
  u_xlat1 = max(x_1726, 0.0f);
  let x_1728 : f32 = u_xlat1;
  u_xlat1 = log2(x_1728);
  let x_1730 : f32 = u_xlat1;
  let x_1732 : f32 = x_1720.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1730 * x_1732);
  let x_1734 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1734);
  let x_1736 : f32 = u_xlat1;
  let x_1738 : f32 = x_1720.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1736 * x_1738);
  let x_1740 : vec4<f32> = u_xlat6;
  let x_1742 : f32 = u_xlat1;
  let x_1744 : vec3<f32> = (vec3<f32>(x_1740.x, x_1740.y, x_1740.z) * vec3<f32>(x_1742, x_1742, x_1742));
  let x_1745 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : f32 = u_xlat78;
  let x_1749 : f32 = u_xlat78;
  let x_1753 : vec2<f32> = ((vec2<f32>(x_1747, x_1747) * vec2<f32>(x_1749, x_1749)) + vec2<f32>(-1.0f, 1.0f));
  let x_1754 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
  let x_1757 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1757);
  let x_1759 : vec4<f32> = u_xlat0;
  let x_1762 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1759.x, x_1759.y, x_1759.z)) + vec3<f32>(x_1762, x_1762, x_1762));
  let x_1765 : f32 = u_xlat80;
  let x_1767 : vec3<f32> = u_xlat32;
  let x_1769 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1765, x_1765, x_1765) * x_1767) + vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : f32 = u_xlat1;
  let x_1774 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1772, x_1772, x_1772) * x_1774);
  let x_1776 : vec4<f32> = u_xlat6;
  let x_1778 : vec3<f32> = u_xlat32;
  let x_1779 : vec3<f32> = (vec3<f32>(x_1776.x, x_1776.y, x_1776.z) * x_1778);
  let x_1780 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1782 : vec4<f32> = u_xlat3;
  let x_1784 : vec3<f32> = u_xlat29;
  let x_1786 : vec4<f32> = u_xlat6;
  let x_1788 : vec3<f32> = ((vec3<f32>(x_1782.x, x_1782.y, x_1782.z) * x_1784) + vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1792 : f32 = u_xlat30.x;
  let x_1794 : f32 = x_1720.unity_LightData.z;
  u_xlat75 = (x_1792 * x_1794);
  let x_1796 : vec3<f32> = u_xlat2;
  let x_1798 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1796, vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1801 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1801, 0.0f, 1.0f);
  let x_1803 : f32 = u_xlat75;
  let x_1804 : f32 = u_xlat1;
  u_xlat75 = (x_1803 * x_1804);
  let x_1806 : f32 = u_xlat75;
  let x_1809 : vec4<f32> = x_29.x_MainLightColor;
  let x_1811 : vec3<f32> = (vec3<f32>(x_1806, x_1806, x_1806) * vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1812 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
  let x_1814 : vec3<f32> = u_xlat26;
  let x_1816 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (x_1814 + vec3<f32>(x_1816.x, x_1816.y, x_1816.z));
  let x_1819 : vec3<f32> = u_xlat32;
  let x_1820 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1819, x_1820);
  let x_1822 : f32 = u_xlat75;
  u_xlat75 = max(x_1822, 1.17549435e-38f);
  let x_1825 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1825);
  let x_1827 : f32 = u_xlat75;
  let x_1829 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1827, x_1827, x_1827) * x_1829);
  let x_1831 : vec3<f32> = u_xlat2;
  let x_1832 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1831, x_1832);
  let x_1834 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1834, 0.0f, 1.0f);
  let x_1837 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1839 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_1837.x, x_1837.y, x_1837.z), x_1839);
  let x_1841 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1841, 0.0f, 1.0f);
  let x_1843 : f32 = u_xlat75;
  let x_1844 : f32 = u_xlat75;
  u_xlat75 = (x_1843 * x_1844);
  let x_1846 : f32 = u_xlat75;
  let x_1848 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1846 * x_1848) + 1.00001001358032226562f);
  let x_1852 : f32 = u_xlat1;
  let x_1853 : f32 = u_xlat1;
  u_xlat1 = (x_1852 * x_1853);
  let x_1855 : f32 = u_xlat75;
  let x_1856 : f32 = u_xlat75;
  u_xlat75 = (x_1855 * x_1856);
  let x_1858 : f32 = u_xlat1;
  u_xlat1 = max(x_1858, 0.10000000149011611938f);
  let x_1861 : f32 = u_xlat75;
  let x_1862 : f32 = u_xlat1;
  u_xlat75 = (x_1861 * x_1862);
  let x_1865 : f32 = u_xlat4.x;
  let x_1866 : f32 = u_xlat75;
  u_xlat75 = (x_1865 * x_1866);
  let x_1868 : f32 = u_xlat5;
  let x_1869 : f32 = u_xlat75;
  u_xlat75 = (x_1868 / x_1869);
  let x_1871 : vec4<f32> = u_xlat0;
  let x_1873 : f32 = u_xlat75;
  let x_1876 : vec3<f32> = u_xlat29;
  u_xlat32 = ((vec3<f32>(x_1871.x, x_1871.y, x_1871.z) * vec3<f32>(x_1873, x_1873, x_1873)) + x_1876);
  let x_1879 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1881 : f32 = x_1720.unity_LightData.y;
  u_xlat75 = min(x_1879, x_1881);
  let x_1885 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1885));
  let x_1889 : f32 = u_xlat55.x;
  let x_1892 : f32 = x_309.x_AdditionalShadowFadeParams.x;
  let x_1895 : f32 = x_309.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1889 * x_1892) + x_1895);
  let x_1897 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1897, 0.0f, 1.0f);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1909 : u32 = u_xlatu_loop_1;
    let x_1910 : u32 = u_xlatu75;
    if ((x_1909 < x_1910)) {
    } else {
      break;
    }
    let x_1913 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1913 >> 2u);
    let x_1917 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1917 & 3u));
    let x_1920 : u32 = u_xlatu81;
    let x_1923 : vec4<f32> = x_1720.unity_LightIndices[bitcast<i32>(x_1920)];
    let x_1933 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1938 : vec4<u32> = indexable[x_1933];
    u_xlat81 = dot(x_1923, bitcast<vec4<f32>>(x_1938));
    let x_1942 : f32 = u_xlat81;
    u_xlati81 = i32(x_1942);
    let x_1944 : vec3<f32> = vs_TEXCOORD7;
    let x_1955 : i32 = u_xlati81;
    let x_1957 : vec4<f32> = x_1954.x_AdditionalLightsPosition[x_1955];
    let x_1960 : i32 = u_xlati81;
    let x_1962 : vec4<f32> = x_1954.x_AdditionalLightsPosition[x_1960];
    let x_1964 : vec3<f32> = ((-(x_1944) * vec3<f32>(x_1957.w, x_1957.w, x_1957.w)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
    let x_1968 : vec4<f32> = u_xlat8;
    let x_1970 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_1968.x, x_1968.y, x_1968.z), vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
    let x_1973 : f32 = u_xlat83;
    u_xlat83 = max(x_1973, 0.00006103515625f);
    let x_1976 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_1976);
    let x_1980 : vec4<f32> = u_xlat8;
    let x_1982 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_1980.x, x_1980.y, x_1980.z) * vec3<f32>(x_1982.x, x_1982.x, x_1982.x));
    let x_1985 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_1985);
    let x_1988 : f32 = u_xlat83;
    let x_1989 : i32 = u_xlati81;
    let x_1991 : f32 = x_1954.x_AdditionalLightsAttenuation[x_1989].x;
    u_xlat83 = (x_1988 * x_1991);
    let x_1993 : f32 = u_xlat83;
    let x_1995 : f32 = u_xlat83;
    u_xlat83 = ((-(x_1993) * x_1995) + 1.0f);
    let x_1998 : f32 = u_xlat83;
    u_xlat83 = max(x_1998, 0.0f);
    let x_2000 : f32 = u_xlat83;
    let x_2001 : f32 = u_xlat83;
    u_xlat83 = (x_2000 * x_2001);
    let x_2003 : f32 = u_xlat83;
    let x_2005 : f32 = u_xlat10.x;
    u_xlat83 = (x_2003 * x_2005);
    let x_2007 : i32 = u_xlati81;
    let x_2009 : vec4<f32> = x_1954.x_AdditionalLightsSpotDir[x_2007];
    let x_2011 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2009.x, x_2009.y, x_2009.z), x_2011);
    let x_2015 : f32 = u_xlat10.x;
    let x_2016 : i32 = u_xlati81;
    let x_2018 : f32 = x_1954.x_AdditionalLightsAttenuation[x_2016].z;
    let x_2020 : i32 = u_xlati81;
    let x_2022 : f32 = x_1954.x_AdditionalLightsAttenuation[x_2020].w;
    u_xlat10.x = ((x_2015 * x_2018) + x_2022);
    let x_2026 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2026, 0.0f, 1.0f);
    let x_2030 : f32 = u_xlat10.x;
    let x_2032 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2030 * x_2032);
    let x_2035 : f32 = u_xlat83;
    let x_2037 : f32 = u_xlat10.x;
    u_xlat83 = (x_2035 * x_2037);
    let x_2041 : i32 = u_xlati81;
    let x_2043 : f32 = x_309.x_AdditionalShadowParams[x_2041].w;
    u_xlati10 = i32(x_2043);
    let x_2048 : i32 = u_xlati10;
    u_xlatb35.x = (x_2048 >= 0i);
    let x_2052 : bool = u_xlatb35.x;
    if (x_2052) {
      let x_2056 : i32 = u_xlati81;
      let x_2058 : f32 = x_309.x_AdditionalShadowParams[x_2056].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2058, x_2058, x_2058, x_2058))));
      let x_2065 : bool = u_xlatb35.x;
      if (x_2065) {
        let x_2068 : vec3<f32> = u_xlat34;
        let x_2071 : vec3<f32> = u_xlat34;
        let x_2074 : vec4<bool> = (abs(vec4<f32>(x_2068.z, x_2068.z, x_2068.y, x_2068.y)) >= abs(vec4<f32>(x_2071.x, x_2071.y, x_2071.x, x_2071.x)));
        u_xlatb35 = vec3<bool>(x_2074.x, x_2074.y, x_2074.z);
        let x_2077 : bool = u_xlatb35.y;
        let x_2079 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2077 & x_2079);
        let x_2083 : vec3<f32> = u_xlat34;
        let x_2086 : vec4<bool> = (-(vec4<f32>(x_2083.z, x_2083.y, x_2083.x, x_2083.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2086.x, x_2086.y, x_2086.z);
        let x_2089 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2089);
        let x_2094 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2094);
        let x_2100 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2100);
        let x_2103 : bool = u_xlatb35.z;
        if (x_2103) {
          let x_2108 : f32 = u_xlat11.y;
          x_2104 = x_2108;
        } else {
          let x_2110 : f32 = u_xlat60;
          x_2104 = x_2110;
        }
        let x_2111 : f32 = x_2104;
        u_xlat60 = x_2111;
        let x_2114 : bool = u_xlatb35.x;
        if (x_2114) {
          let x_2119 : f32 = u_xlat11.x;
          x_2115 = x_2119;
        } else {
          let x_2121 : f32 = u_xlat60;
          x_2115 = x_2121;
        }
        let x_2122 : f32 = x_2115;
        u_xlat35 = x_2122;
        let x_2123 : i32 = u_xlati81;
        let x_2125 : f32 = x_309.x_AdditionalShadowParams[x_2123].w;
        u_xlat60 = trunc(x_2125);
        let x_2127 : f32 = u_xlat35;
        let x_2128 : f32 = u_xlat60;
        u_xlat35 = (x_2127 + x_2128);
        let x_2130 : f32 = u_xlat35;
        u_xlati10 = i32(x_2130);
      }
      let x_2132 : i32 = u_xlati10;
      u_xlati10 = (x_2132 << bitcast<u32>(2i));
      let x_2134 : vec3<f32> = vs_TEXCOORD7;
      let x_2137 : i32 = u_xlati10;
      let x_2140 : i32 = u_xlati10;
      let x_2144 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[((x_2137 + 1i) / 4i)][((x_2140 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2134.y, x_2134.y, x_2134.y, x_2134.y) * x_2144);
      let x_2146 : i32 = u_xlati10;
      let x_2148 : i32 = u_xlati10;
      let x_2151 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[(x_2146 / 4i)][(x_2148 % 4i)];
      let x_2152 : vec3<f32> = vs_TEXCOORD7;
      let x_2155 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2151 * vec4<f32>(x_2152.x, x_2152.x, x_2152.x, x_2152.x)) + x_2155);
      let x_2157 : i32 = u_xlati10;
      let x_2160 : i32 = u_xlati10;
      let x_2164 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[((x_2157 + 2i) / 4i)][((x_2160 + 2i) % 4i)];
      let x_2165 : vec3<f32> = vs_TEXCOORD7;
      let x_2168 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2164 * vec4<f32>(x_2165.z, x_2165.z, x_2165.z, x_2165.z)) + x_2168);
      let x_2170 : vec4<f32> = u_xlat11;
      let x_2171 : i32 = u_xlati10;
      let x_2174 : i32 = u_xlati10;
      let x_2178 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[((x_2171 + 3i) / 4i)][((x_2174 + 3i) % 4i)];
      u_xlat10 = (x_2170 + x_2178);
      let x_2180 : vec4<f32> = u_xlat10;
      let x_2182 : vec4<f32> = u_xlat10;
      let x_2184 : vec3<f32> = (vec3<f32>(x_2180.x, x_2180.y, x_2180.z) / vec3<f32>(x_2182.w, x_2182.w, x_2182.w));
      let x_2185 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
      let x_2188 : i32 = u_xlati81;
      let x_2190 : f32 = x_309.x_AdditionalShadowParams[x_2188].y;
      u_xlatb85 = (0.0f < x_2190);
      let x_2192 : bool = u_xlatb85;
      if (x_2192) {
        let x_2195 : i32 = u_xlati81;
        let x_2197 : f32 = x_309.x_AdditionalShadowParams[x_2195].y;
        u_xlatb85 = (1.0f == x_2197);
        let x_2199 : bool = u_xlatb85;
        if (x_2199) {
          let x_2202 : vec4<f32> = u_xlat10;
          let x_2206 : vec4<f32> = x_309.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2202.x, x_2202.y, x_2202.x, x_2202.y) + x_2206);
          let x_2209 : vec4<f32> = u_xlat11;
          let x_2210 : vec2<f32> = vec2<f32>(x_2209.x, x_2209.y);
          let x_2212 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
          let x_2220 : vec3<f32> = txVec30;
          let x_2222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2220.xy, x_2220.z);
          u_xlat12.x = x_2222;
          let x_2225 : vec4<f32> = u_xlat11;
          let x_2226 : vec2<f32> = vec2<f32>(x_2225.z, x_2225.w);
          let x_2228 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2226.x, x_2226.y, x_2228);
          let x_2235 : vec3<f32> = txVec31;
          let x_2237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2235.xy, x_2235.z);
          u_xlat12.y = x_2237;
          let x_2239 : vec4<f32> = u_xlat10;
          let x_2243 : vec4<f32> = x_309.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2239.x, x_2239.y, x_2239.x, x_2239.y) + x_2243);
          let x_2246 : vec4<f32> = u_xlat11;
          let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
          let x_2249 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
          let x_2256 : vec3<f32> = txVec32;
          let x_2258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2256.xy, x_2256.z);
          u_xlat12.z = x_2258;
          let x_2261 : vec4<f32> = u_xlat11;
          let x_2262 : vec2<f32> = vec2<f32>(x_2261.z, x_2261.w);
          let x_2264 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2262.x, x_2262.y, x_2264);
          let x_2271 : vec3<f32> = txVec33;
          let x_2273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2271.xy, x_2271.z);
          u_xlat12.w = x_2273;
          let x_2276 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2276, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2279 : i32 = u_xlati81;
          let x_2281 : f32 = x_309.x_AdditionalShadowParams[x_2279].y;
          u_xlatb11.x = (2.0f == x_2281);
          let x_2285 : bool = u_xlatb11.x;
          if (x_2285) {
            let x_2288 : vec4<f32> = u_xlat10;
            let x_2292 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2295 : vec2<f32> = ((vec2<f32>(x_2288.x, x_2288.y) * vec2<f32>(x_2292.z, x_2292.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2296 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
            let x_2298 : vec4<f32> = u_xlat11;
            let x_2300 : vec2<f32> = floor(vec2<f32>(x_2298.x, x_2298.y));
            let x_2301 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
            let x_2304 : vec4<f32> = u_xlat10;
            let x_2307 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2310 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2304.x, x_2304.y) * vec2<f32>(x_2307.z, x_2307.w)) + -(vec2<f32>(x_2310.x, x_2310.y)));
            let x_2314 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2314.x, x_2314.x, x_2314.y, x_2314.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2317 : vec4<f32> = u_xlat12;
            let x_2319 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2317.x, x_2317.x, x_2317.z, x_2317.z) * vec4<f32>(x_2319.x, x_2319.x, x_2319.z, x_2319.z));
            let x_2322 : vec4<f32> = u_xlat13;
            let x_2324 : vec2<f32> = (vec2<f32>(x_2322.y, x_2322.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2325 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2324.x, x_2325.y, x_2324.y, x_2325.w);
            let x_2327 : vec4<f32> = u_xlat13;
            let x_2330 : vec2<f32> = u_xlat61;
            let x_2332 : vec2<f32> = ((vec2<f32>(x_2327.x, x_2327.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2330));
            let x_2333 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2332.x, x_2332.y, x_2333.z, x_2333.w);
            let x_2336 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2336) + vec2<f32>(1.0f, 1.0f));
            let x_2339 : vec2<f32> = u_xlat61;
            let x_2340 : vec2<f32> = min(x_2339, vec2<f32>(0.0f, 0.0f));
            let x_2341 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2343 : vec4<f32> = u_xlat14;
            let x_2346 : vec4<f32> = u_xlat14;
            let x_2349 : vec2<f32> = u_xlat63;
            let x_2350 : vec2<f32> = ((-(vec2<f32>(x_2343.x, x_2343.y)) * vec2<f32>(x_2346.x, x_2346.y)) + x_2349);
            let x_2351 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
            let x_2353 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2353, vec2<f32>(0.0f, 0.0f));
            let x_2355 : vec2<f32> = u_xlat61;
            let x_2357 : vec2<f32> = u_xlat61;
            let x_2359 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2355) * x_2357) + vec2<f32>(x_2359.y, x_2359.w));
            let x_2362 : vec4<f32> = u_xlat14;
            let x_2364 : vec2<f32> = (vec2<f32>(x_2362.x, x_2362.y) + vec2<f32>(1.0f, 1.0f));
            let x_2365 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2364.x, x_2364.y, x_2365.z, x_2365.w);
            let x_2367 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2367 + vec2<f32>(1.0f, 1.0f));
            let x_2369 : vec4<f32> = u_xlat13;
            let x_2371 : vec2<f32> = (vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2372 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2374 : vec2<f32> = u_xlat63;
            let x_2375 : vec2<f32> = (x_2374 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2376 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
            let x_2378 : vec4<f32> = u_xlat14;
            let x_2380 : vec2<f32> = (vec2<f32>(x_2378.x, x_2378.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2381 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2380.x, x_2380.y, x_2381.z, x_2381.w);
            let x_2383 : vec2<f32> = u_xlat61;
            let x_2384 : vec2<f32> = (x_2383 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2385 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2387.y, x_2387.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2391 : f32 = u_xlat14.x;
            u_xlat15.z = x_2391;
            let x_2394 : f32 = u_xlat61.x;
            u_xlat15.w = x_2394;
            let x_2397 : f32 = u_xlat16.x;
            u_xlat13.z = x_2397;
            let x_2400 : f32 = u_xlat12.x;
            u_xlat13.w = x_2400;
            let x_2402 : vec4<f32> = u_xlat13;
            let x_2404 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2402.z, x_2402.w, x_2402.x, x_2402.z) + vec4<f32>(x_2404.z, x_2404.w, x_2404.x, x_2404.z));
            let x_2408 : f32 = u_xlat15.y;
            u_xlat14.z = x_2408;
            let x_2411 : f32 = u_xlat61.y;
            u_xlat14.w = x_2411;
            let x_2414 : f32 = u_xlat13.y;
            u_xlat16.z = x_2414;
            let x_2417 : f32 = u_xlat12.z;
            u_xlat16.w = x_2417;
            let x_2419 : vec4<f32> = u_xlat14;
            let x_2421 : vec4<f32> = u_xlat16;
            let x_2423 : vec3<f32> = (vec3<f32>(x_2419.z, x_2419.y, x_2419.w) + vec3<f32>(x_2421.z, x_2421.y, x_2421.w));
            let x_2424 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat13;
            let x_2428 : vec4<f32> = u_xlat17;
            let x_2430 : vec3<f32> = (vec3<f32>(x_2426.x, x_2426.z, x_2426.w) / vec3<f32>(x_2428.z, x_2428.w, x_2428.y));
            let x_2431 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
            let x_2433 : vec4<f32> = u_xlat13;
            let x_2435 : vec3<f32> = (vec3<f32>(x_2433.x, x_2433.y, x_2433.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2436 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
            let x_2438 : vec4<f32> = u_xlat16;
            let x_2440 : vec4<f32> = u_xlat12;
            let x_2442 : vec3<f32> = (vec3<f32>(x_2438.z, x_2438.y, x_2438.w) / vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
            let x_2443 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
            let x_2445 : vec4<f32> = u_xlat14;
            let x_2447 : vec3<f32> = (vec3<f32>(x_2445.x, x_2445.y, x_2445.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2448 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat13;
            let x_2453 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2455 : vec3<f32> = (vec3<f32>(x_2450.y, x_2450.x, x_2450.z) * vec3<f32>(x_2453.x, x_2453.x, x_2453.x));
            let x_2456 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
            let x_2458 : vec4<f32> = u_xlat14;
            let x_2461 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2463 : vec3<f32> = (vec3<f32>(x_2458.x, x_2458.y, x_2458.z) * vec3<f32>(x_2461.y, x_2461.y, x_2461.y));
            let x_2464 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
            let x_2467 : f32 = u_xlat14.x;
            u_xlat13.w = x_2467;
            let x_2469 : vec4<f32> = u_xlat11;
            let x_2472 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2475 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y) * vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y)) + vec4<f32>(x_2475.y, x_2475.w, x_2475.x, x_2475.w));
            let x_2478 : vec4<f32> = u_xlat11;
            let x_2481 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2484 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2478.x, x_2478.y) * vec2<f32>(x_2481.x, x_2481.y)) + vec2<f32>(x_2484.z, x_2484.w));
            let x_2488 : f32 = u_xlat13.y;
            u_xlat14.w = x_2488;
            let x_2490 : vec4<f32> = u_xlat14;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.y, x_2490.z);
            let x_2492 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2492.x, x_2491.x, x_2492.z, x_2491.y);
            let x_2494 : vec4<f32> = u_xlat11;
            let x_2497 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2500 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2494.x, x_2494.y, x_2494.x, x_2494.y) * vec4<f32>(x_2497.x, x_2497.y, x_2497.x, x_2497.y)) + vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2500.y));
            let x_2503 : vec4<f32> = u_xlat11;
            let x_2506 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2509 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.y) * vec4<f32>(x_2506.x, x_2506.y, x_2506.x, x_2506.y)) + vec4<f32>(x_2509.w, x_2509.y, x_2509.w, x_2509.z));
            let x_2512 : vec4<f32> = u_xlat11;
            let x_2515 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2518 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2512.x, x_2512.y, x_2512.x, x_2512.y) * vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y)) + vec4<f32>(x_2518.x, x_2518.w, x_2518.z, x_2518.w));
            let x_2521 : vec4<f32> = u_xlat12;
            let x_2523 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2521.x, x_2521.x, x_2521.x, x_2521.y) * vec4<f32>(x_2523.z, x_2523.w, x_2523.y, x_2523.z));
            let x_2526 : vec4<f32> = u_xlat12;
            let x_2528 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2526.y, x_2526.y, x_2526.z, x_2526.z) * x_2528);
            let x_2531 : f32 = u_xlat12.z;
            let x_2533 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2531 * x_2533);
            let x_2537 : vec4<f32> = u_xlat15;
            let x_2538 : vec2<f32> = vec2<f32>(x_2537.x, x_2537.y);
            let x_2540 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2548 : vec3<f32> = txVec34;
            let x_2550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2548.xy, x_2548.z);
            u_xlat36 = x_2550;
            let x_2552 : vec4<f32> = u_xlat15;
            let x_2553 : vec2<f32> = vec2<f32>(x_2552.z, x_2552.w);
            let x_2555 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2553.x, x_2553.y, x_2555);
            let x_2562 : vec3<f32> = txVec35;
            let x_2564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
            u_xlat12.x = x_2564;
            let x_2567 : f32 = u_xlat12.x;
            let x_2569 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2567 * x_2569);
            let x_2573 : f32 = u_xlat18.x;
            let x_2574 : f32 = u_xlat36;
            let x_2577 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2573 * x_2574) + x_2577);
            let x_2580 : vec2<f32> = u_xlat61;
            let x_2582 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2580.x, x_2580.y, x_2582);
            let x_2589 : vec3<f32> = txVec36;
            let x_2591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2589.xy, x_2589.z);
            u_xlat61.x = x_2591;
            let x_2594 : f32 = u_xlat18.z;
            let x_2596 : f32 = u_xlat61.x;
            let x_2598 : f32 = u_xlat36;
            u_xlat36 = ((x_2594 * x_2596) + x_2598);
            let x_2601 : vec4<f32> = u_xlat14;
            let x_2602 : vec2<f32> = vec2<f32>(x_2601.x, x_2601.y);
            let x_2604 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
            let x_2611 : vec3<f32> = txVec37;
            let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
            u_xlat61.x = x_2613;
            let x_2616 : f32 = u_xlat18.w;
            let x_2618 : f32 = u_xlat61.x;
            let x_2620 : f32 = u_xlat36;
            u_xlat36 = ((x_2616 * x_2618) + x_2620);
            let x_2623 : vec4<f32> = u_xlat16;
            let x_2624 : vec2<f32> = vec2<f32>(x_2623.x, x_2623.y);
            let x_2626 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2624.x, x_2624.y, x_2626);
            let x_2633 : vec3<f32> = txVec38;
            let x_2635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2633.xy, x_2633.z);
            u_xlat61.x = x_2635;
            let x_2638 : f32 = u_xlat19.x;
            let x_2640 : f32 = u_xlat61.x;
            let x_2642 : f32 = u_xlat36;
            u_xlat36 = ((x_2638 * x_2640) + x_2642);
            let x_2645 : vec4<f32> = u_xlat16;
            let x_2646 : vec2<f32> = vec2<f32>(x_2645.z, x_2645.w);
            let x_2648 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2646.x, x_2646.y, x_2648);
            let x_2655 : vec3<f32> = txVec39;
            let x_2657 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2655.xy, x_2655.z);
            u_xlat61.x = x_2657;
            let x_2660 : f32 = u_xlat19.y;
            let x_2662 : f32 = u_xlat61.x;
            let x_2664 : f32 = u_xlat36;
            u_xlat36 = ((x_2660 * x_2662) + x_2664);
            let x_2667 : vec4<f32> = u_xlat14;
            let x_2668 : vec2<f32> = vec2<f32>(x_2667.z, x_2667.w);
            let x_2670 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2668.x, x_2668.y, x_2670);
            let x_2677 : vec3<f32> = txVec40;
            let x_2679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2677.xy, x_2677.z);
            u_xlat61.x = x_2679;
            let x_2682 : f32 = u_xlat19.z;
            let x_2684 : f32 = u_xlat61.x;
            let x_2686 : f32 = u_xlat36;
            u_xlat36 = ((x_2682 * x_2684) + x_2686);
            let x_2689 : vec4<f32> = u_xlat13;
            let x_2690 : vec2<f32> = vec2<f32>(x_2689.x, x_2689.y);
            let x_2692 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2690.x, x_2690.y, x_2692);
            let x_2699 : vec3<f32> = txVec41;
            let x_2701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2699.xy, x_2699.z);
            u_xlat61.x = x_2701;
            let x_2704 : f32 = u_xlat19.w;
            let x_2706 : f32 = u_xlat61.x;
            let x_2708 : f32 = u_xlat36;
            u_xlat36 = ((x_2704 * x_2706) + x_2708);
            let x_2711 : vec4<f32> = u_xlat13;
            let x_2712 : vec2<f32> = vec2<f32>(x_2711.z, x_2711.w);
            let x_2714 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2712.x, x_2712.y, x_2714);
            let x_2721 : vec3<f32> = txVec42;
            let x_2723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2721.xy, x_2721.z);
            u_xlat61.x = x_2723;
            let x_2726 : f32 = u_xlat11.x;
            let x_2728 : f32 = u_xlat61.x;
            let x_2730 : f32 = u_xlat36;
            u_xlat85 = ((x_2726 * x_2728) + x_2730);
          } else {
            let x_2733 : vec4<f32> = u_xlat10;
            let x_2736 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2739 : vec2<f32> = ((vec2<f32>(x_2733.x, x_2733.y) * vec2<f32>(x_2736.z, x_2736.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2740 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
            let x_2742 : vec4<f32> = u_xlat11;
            let x_2744 : vec2<f32> = floor(vec2<f32>(x_2742.x, x_2742.y));
            let x_2745 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat10;
            let x_2750 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2753 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2747.x, x_2747.y) * vec2<f32>(x_2750.z, x_2750.w)) + -(vec2<f32>(x_2753.x, x_2753.y)));
            let x_2757 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2757.x, x_2757.x, x_2757.y, x_2757.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2760 : vec4<f32> = u_xlat12;
            let x_2762 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2760.x, x_2760.x, x_2760.z, x_2760.z) * vec4<f32>(x_2762.x, x_2762.x, x_2762.z, x_2762.z));
            let x_2765 : vec4<f32> = u_xlat13;
            let x_2767 : vec2<f32> = (vec2<f32>(x_2765.y, x_2765.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2768 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2768.x, x_2767.x, x_2768.z, x_2767.y);
            let x_2770 : vec4<f32> = u_xlat13;
            let x_2773 : vec2<f32> = u_xlat61;
            let x_2775 : vec2<f32> = ((vec2<f32>(x_2770.x, x_2770.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2773));
            let x_2776 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2775.x, x_2776.y, x_2775.y, x_2776.w);
            let x_2778 : vec2<f32> = u_xlat61;
            let x_2780 : vec2<f32> = (-(x_2778) + vec2<f32>(1.0f, 1.0f));
            let x_2781 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2780.x, x_2780.y, x_2781.z, x_2781.w);
            let x_2783 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2783, vec2<f32>(0.0f, 0.0f));
            let x_2785 : vec2<f32> = u_xlat63;
            let x_2787 : vec2<f32> = u_xlat63;
            let x_2789 : vec4<f32> = u_xlat13;
            let x_2791 : vec2<f32> = ((-(x_2785) * x_2787) + vec2<f32>(x_2789.x, x_2789.y));
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
            let x_2794 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2794, vec2<f32>(0.0f, 0.0f));
            let x_2797 : vec2<f32> = u_xlat63;
            let x_2799 : vec2<f32> = u_xlat63;
            let x_2801 : vec4<f32> = u_xlat12;
            let x_2803 : vec2<f32> = ((-(x_2797) * x_2799) + vec2<f32>(x_2801.y, x_2801.w));
            let x_2804 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2803.x, x_2804.y, x_2803.y);
            let x_2806 : vec4<f32> = u_xlat13;
            let x_2809 : vec2<f32> = (vec2<f32>(x_2806.x, x_2806.y) + vec2<f32>(2.0f, 2.0f));
            let x_2810 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2809.x, x_2809.y, x_2810.z, x_2810.w);
            let x_2812 : vec3<f32> = u_xlat37;
            let x_2814 : vec2<f32> = (vec2<f32>(x_2812.x, x_2812.z) + vec2<f32>(2.0f, 2.0f));
            let x_2815 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2815.x, x_2814.x, x_2815.z, x_2814.y);
            let x_2818 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2818 * 0.08163200318813323975f);
            let x_2821 : vec4<f32> = u_xlat12;
            let x_2824 : vec3<f32> = (vec3<f32>(x_2821.z, x_2821.x, x_2821.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2825 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);
            let x_2827 : vec4<f32> = u_xlat13;
            let x_2829 : vec2<f32> = (vec2<f32>(x_2827.x, x_2827.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2830 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2829.x, x_2829.y, x_2830.z, x_2830.w);
            let x_2833 : f32 = u_xlat16.y;
            u_xlat15.x = x_2833;
            let x_2835 : vec2<f32> = u_xlat61;
            let x_2838 : vec2<f32> = ((vec2<f32>(x_2835.x, x_2835.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2839 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2839.x, x_2838.x, x_2839.z, x_2838.y);
            let x_2841 : vec2<f32> = u_xlat61;
            let x_2844 : vec2<f32> = ((vec2<f32>(x_2841.x, x_2841.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2845 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2844.x, x_2845.y, x_2844.y, x_2845.w);
            let x_2848 : f32 = u_xlat12.x;
            u_xlat13.y = x_2848;
            let x_2851 : f32 = u_xlat14.y;
            u_xlat13.w = x_2851;
            let x_2853 : vec4<f32> = u_xlat13;
            let x_2854 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2853 + x_2854);
            let x_2856 : vec2<f32> = u_xlat61;
            let x_2859 : vec2<f32> = ((vec2<f32>(x_2856.y, x_2856.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2860 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2860.x, x_2859.x, x_2860.z, x_2859.y);
            let x_2862 : vec2<f32> = u_xlat61;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2862.y, x_2862.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2866 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2865.x, x_2866.y, x_2865.y, x_2866.w);
            let x_2869 : f32 = u_xlat12.y;
            u_xlat14.y = x_2869;
            let x_2871 : vec4<f32> = u_xlat14;
            let x_2872 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2871 + x_2872);
            let x_2874 : vec4<f32> = u_xlat13;
            let x_2875 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2874 / x_2875);
            let x_2877 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2877 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2879 : vec4<f32> = u_xlat14;
            let x_2880 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2879 / x_2880);
            let x_2882 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2882 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2884 : vec4<f32> = u_xlat13;
            let x_2887 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2884.w, x_2884.x, x_2884.y, x_2884.z) * vec4<f32>(x_2887.x, x_2887.x, x_2887.x, x_2887.x));
            let x_2890 : vec4<f32> = u_xlat14;
            let x_2893 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2890.x, x_2890.w, x_2890.y, x_2890.z) * vec4<f32>(x_2893.y, x_2893.y, x_2893.y, x_2893.y));
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2897 : vec3<f32> = vec3<f32>(x_2896.y, x_2896.z, x_2896.w);
            let x_2898 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2897.x, x_2898.y, x_2897.y, x_2897.z);
            let x_2901 : f32 = u_xlat14.x;
            u_xlat16.y = x_2901;
            let x_2903 : vec4<f32> = u_xlat11;
            let x_2906 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2909 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2903.x, x_2903.y, x_2903.x, x_2903.y) * vec4<f32>(x_2906.x, x_2906.y, x_2906.x, x_2906.y)) + vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2909.y));
            let x_2912 : vec4<f32> = u_xlat11;
            let x_2915 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(x_2915.x, x_2915.y)) + vec2<f32>(x_2918.w, x_2918.y));
            let x_2922 : f32 = u_xlat16.y;
            u_xlat13.y = x_2922;
            let x_2925 : f32 = u_xlat14.z;
            u_xlat16.y = x_2925;
            let x_2927 : vec4<f32> = u_xlat11;
            let x_2930 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2933 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y) * vec4<f32>(x_2930.x, x_2930.y, x_2930.x, x_2930.y)) + vec4<f32>(x_2933.x, x_2933.y, x_2933.z, x_2933.y));
            let x_2936 : vec4<f32> = u_xlat11;
            let x_2939 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2942 : vec4<f32> = u_xlat16;
            let x_2944 : vec2<f32> = ((vec2<f32>(x_2936.x, x_2936.y) * vec2<f32>(x_2939.x, x_2939.y)) + vec2<f32>(x_2942.w, x_2942.y));
            let x_2945 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2944.x, x_2944.y, x_2945.z, x_2945.w);
            let x_2948 : f32 = u_xlat16.y;
            u_xlat13.z = x_2948;
            let x_2951 : vec4<f32> = u_xlat11;
            let x_2954 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2957 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2951.x, x_2951.y, x_2951.x, x_2951.y) * vec4<f32>(x_2954.x, x_2954.y, x_2954.x, x_2954.y)) + vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.z));
            let x_2961 : f32 = u_xlat14.w;
            u_xlat16.y = x_2961;
            let x_2964 : vec4<f32> = u_xlat11;
            let x_2967 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2970 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2964.x, x_2964.y, x_2964.x, x_2964.y) * vec4<f32>(x_2967.x, x_2967.y, x_2967.x, x_2967.y)) + vec4<f32>(x_2970.x, x_2970.y, x_2970.z, x_2970.y));
            let x_2974 : vec4<f32> = u_xlat11;
            let x_2977 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2977.x, x_2977.y)) + vec2<f32>(x_2980.w, x_2980.y));
            let x_2984 : f32 = u_xlat16.y;
            u_xlat13.w = x_2984;
            let x_2987 : vec4<f32> = u_xlat11;
            let x_2990 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2987.x, x_2987.y) * vec2<f32>(x_2990.x, x_2990.y)) + vec2<f32>(x_2993.x, x_2993.w));
            let x_2996 : vec4<f32> = u_xlat16;
            let x_2997 : vec3<f32> = vec3<f32>(x_2996.x, x_2996.z, x_2996.w);
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2997.x, x_2998.y, x_2997.y, x_2997.z);
            let x_3000 : vec4<f32> = u_xlat11;
            let x_3003 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_3006 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3000.x, x_3000.y, x_3000.x, x_3000.y) * vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y)) + vec4<f32>(x_3006.x, x_3006.y, x_3006.z, x_3006.y));
            let x_3010 : vec4<f32> = u_xlat11;
            let x_3013 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3010.x, x_3010.y) * vec2<f32>(x_3013.x, x_3013.y)) + vec2<f32>(x_3016.w, x_3016.y));
            let x_3020 : f32 = u_xlat13.x;
            u_xlat14.x = x_3020;
            let x_3022 : vec4<f32> = u_xlat11;
            let x_3025 : vec4<f32> = x_309.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat14;
            let x_3030 : vec2<f32> = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(x_3025.x, x_3025.y)) + vec2<f32>(x_3028.x, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3034 : vec4<f32> = u_xlat12;
            let x_3036 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3034.x, x_3034.x, x_3034.x, x_3034.x) * x_3036);
            let x_3039 : vec4<f32> = u_xlat12;
            let x_3041 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3039.y, x_3039.y, x_3039.y, x_3039.y) * x_3041);
            let x_3044 : vec4<f32> = u_xlat12;
            let x_3046 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3044.z, x_3044.z, x_3044.z, x_3044.z) * x_3046);
            let x_3048 : vec4<f32> = u_xlat12;
            let x_3050 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3048.w, x_3048.w, x_3048.w, x_3048.w) * x_3050);
            let x_3053 : vec4<f32> = u_xlat17;
            let x_3054 : vec2<f32> = vec2<f32>(x_3053.x, x_3053.y);
            let x_3056 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3054.x, x_3054.y, x_3056);
            let x_3063 : vec3<f32> = txVec43;
            let x_3065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3063.xy, x_3063.z);
            u_xlat13.x = x_3065;
            let x_3068 : vec4<f32> = u_xlat17;
            let x_3069 : vec2<f32> = vec2<f32>(x_3068.z, x_3068.w);
            let x_3071 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
            let x_3079 : vec3<f32> = txVec44;
            let x_3081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3079.xy, x_3079.z);
            u_xlat88 = x_3081;
            let x_3082 : f32 = u_xlat88;
            let x_3084 : f32 = u_xlat22.y;
            u_xlat88 = (x_3082 * x_3084);
            let x_3087 : f32 = u_xlat22.x;
            let x_3089 : f32 = u_xlat13.x;
            let x_3091 : f32 = u_xlat88;
            u_xlat13.x = ((x_3087 * x_3089) + x_3091);
            let x_3095 : vec2<f32> = u_xlat61;
            let x_3097 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec45;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat61.x = x_3106;
            let x_3109 : f32 = u_xlat22.z;
            let x_3111 : f32 = u_xlat61.x;
            let x_3114 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3109 * x_3111) + x_3114);
            let x_3118 : vec4<f32> = u_xlat20;
            let x_3119 : vec2<f32> = vec2<f32>(x_3118.x, x_3118.y);
            let x_3121 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3129 : vec3<f32> = txVec46;
            let x_3131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3129.xy, x_3129.z);
            u_xlat86 = x_3131;
            let x_3133 : f32 = u_xlat22.w;
            let x_3134 : f32 = u_xlat86;
            let x_3137 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3133 * x_3134) + x_3137);
            let x_3141 : vec4<f32> = u_xlat18;
            let x_3142 : vec2<f32> = vec2<f32>(x_3141.x, x_3141.y);
            let x_3144 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec47;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat86 = x_3153;
            let x_3155 : f32 = u_xlat23.x;
            let x_3156 : f32 = u_xlat86;
            let x_3159 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3155 * x_3156) + x_3159);
            let x_3163 : vec4<f32> = u_xlat18;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.z, x_3163.w);
            let x_3166 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec48;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat86 = x_3175;
            let x_3177 : f32 = u_xlat23.y;
            let x_3178 : f32 = u_xlat86;
            let x_3181 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3177 * x_3178) + x_3181);
            let x_3185 : vec4<f32> = u_xlat19;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.x, x_3185.y);
            let x_3188 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec49;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat86 = x_3197;
            let x_3199 : f32 = u_xlat23.z;
            let x_3200 : f32 = u_xlat86;
            let x_3203 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3199 * x_3200) + x_3203);
            let x_3207 : vec4<f32> = u_xlat20;
            let x_3208 : vec2<f32> = vec2<f32>(x_3207.z, x_3207.w);
            let x_3210 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3208.x, x_3208.y, x_3210);
            let x_3217 : vec3<f32> = txVec50;
            let x_3219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3217.xy, x_3217.z);
            u_xlat86 = x_3219;
            let x_3221 : f32 = u_xlat23.w;
            let x_3222 : f32 = u_xlat86;
            let x_3225 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3221 * x_3222) + x_3225);
            let x_3229 : vec4<f32> = u_xlat21;
            let x_3230 : vec2<f32> = vec2<f32>(x_3229.x, x_3229.y);
            let x_3232 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
            let x_3239 : vec3<f32> = txVec51;
            let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
            u_xlat86 = x_3241;
            let x_3243 : f32 = u_xlat24.x;
            let x_3244 : f32 = u_xlat86;
            let x_3247 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3243 * x_3244) + x_3247);
            let x_3251 : vec4<f32> = u_xlat21;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.z, x_3251.w);
            let x_3254 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec52;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat86 = x_3263;
            let x_3265 : f32 = u_xlat24.y;
            let x_3266 : f32 = u_xlat86;
            let x_3269 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3265 * x_3266) + x_3269);
            let x_3273 : vec2<f32> = u_xlat38;
            let x_3275 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec53;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat86 = x_3284;
            let x_3286 : f32 = u_xlat24.z;
            let x_3287 : f32 = u_xlat86;
            let x_3290 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3286 * x_3287) + x_3290);
            let x_3294 : vec2<f32> = u_xlat69;
            let x_3296 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3294.x, x_3294.y, x_3296);
            let x_3303 : vec3<f32> = txVec54;
            let x_3305 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3303.xy, x_3303.z);
            u_xlat86 = x_3305;
            let x_3307 : f32 = u_xlat24.w;
            let x_3308 : f32 = u_xlat86;
            let x_3311 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3307 * x_3308) + x_3311);
            let x_3315 : vec4<f32> = u_xlat16;
            let x_3316 : vec2<f32> = vec2<f32>(x_3315.x, x_3315.y);
            let x_3318 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3316.x, x_3316.y, x_3318);
            let x_3325 : vec3<f32> = txVec55;
            let x_3327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3325.xy, x_3325.z);
            u_xlat86 = x_3327;
            let x_3329 : f32 = u_xlat12.x;
            let x_3330 : f32 = u_xlat86;
            let x_3333 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3329 * x_3330) + x_3333);
            let x_3337 : vec4<f32> = u_xlat16;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.z, x_3337.w);
            let x_3340 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec56;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat86 = x_3349;
            let x_3351 : f32 = u_xlat12.y;
            let x_3352 : f32 = u_xlat86;
            let x_3355 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3351 * x_3352) + x_3355);
            let x_3359 : vec2<f32> = u_xlat64;
            let x_3361 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec57;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat86 = x_3370;
            let x_3372 : f32 = u_xlat12.z;
            let x_3373 : f32 = u_xlat86;
            let x_3376 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3372 * x_3373) + x_3376);
            let x_3380 : vec4<f32> = u_xlat11;
            let x_3381 : vec2<f32> = vec2<f32>(x_3380.x, x_3380.y);
            let x_3383 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3381.x, x_3381.y, x_3383);
            let x_3390 : vec3<f32> = txVec58;
            let x_3392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3390.xy, x_3390.z);
            u_xlat11.x = x_3392;
            let x_3395 : f32 = u_xlat12.w;
            let x_3397 : f32 = u_xlat11.x;
            let x_3400 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3395 * x_3397) + x_3400);
          }
        }
      } else {
        let x_3404 : vec4<f32> = u_xlat10;
        let x_3405 : vec2<f32> = vec2<f32>(x_3404.x, x_3404.y);
        let x_3407 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
        let x_3414 : vec3<f32> = txVec59;
        let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
        u_xlat85 = x_3416;
      }
      let x_3417 : i32 = u_xlati81;
      let x_3419 : f32 = x_309.x_AdditionalShadowParams[x_3417].x;
      u_xlat10.x = (1.0f + -(x_3419));
      let x_3423 : f32 = u_xlat85;
      let x_3424 : i32 = u_xlati81;
      let x_3426 : f32 = x_309.x_AdditionalShadowParams[x_3424].x;
      let x_3429 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3423 * x_3426) + x_3429);
      let x_3433 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3433);
      let x_3438 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3438 >= 1.0f);
      let x_3440 : bool = u_xlatb60;
      let x_3442 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3440 | x_3442);
      let x_3446 : bool = u_xlatb35.x;
      if (x_3446) {
        x_3447 = 1.0f;
      } else {
        let x_3452 : f32 = u_xlat10.x;
        x_3447 = x_3452;
      }
      let x_3453 : f32 = x_3447;
      u_xlat10.x = x_3453;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3458 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3458) + 1.0f);
    let x_3461 : f32 = u_xlat1;
    let x_3462 : f32 = u_xlat35;
    let x_3465 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3461 * x_3462) + x_3465);
    let x_3468 : f32 = u_xlat83;
    let x_3470 : f32 = u_xlat10.x;
    u_xlat83 = (x_3468 * x_3470);
    let x_3472 : vec3<f32> = u_xlat2;
    let x_3473 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3472, x_3473);
    let x_3477 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3477, 0.0f, 1.0f);
    let x_3480 : f32 = u_xlat83;
    let x_3482 : f32 = u_xlat10.x;
    u_xlat83 = (x_3480 * x_3482);
    let x_3484 : f32 = u_xlat83;
    let x_3486 : i32 = u_xlati81;
    let x_3488 : vec4<f32> = x_1954.x_AdditionalLightsColor[x_3486];
    let x_3490 : vec3<f32> = (vec3<f32>(x_3484, x_3484, x_3484) * vec3<f32>(x_3488.x, x_3488.y, x_3488.z));
    let x_3491 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3490.x, x_3490.y, x_3490.z, x_3491.w);
    let x_3493 : vec4<f32> = u_xlat8;
    let x_3495 : vec4<f32> = u_xlat9;
    let x_3498 : vec3<f32> = u_xlat26;
    let x_3499 : vec3<f32> = ((vec3<f32>(x_3493.x, x_3493.y, x_3493.z) * vec3<f32>(x_3495.x, x_3495.x, x_3495.x)) + x_3498);
    let x_3500 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3499.x, x_3499.y, x_3499.z, x_3500.w);
    let x_3502 : vec4<f32> = u_xlat8;
    let x_3504 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3502.x, x_3502.y, x_3502.z), vec3<f32>(x_3504.x, x_3504.y, x_3504.z));
    let x_3507 : f32 = u_xlat81;
    u_xlat81 = max(x_3507, 1.17549435e-38f);
    let x_3509 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3509);
    let x_3511 : f32 = u_xlat81;
    let x_3513 : vec4<f32> = u_xlat8;
    let x_3515 : vec3<f32> = (vec3<f32>(x_3511, x_3511, x_3511) * vec3<f32>(x_3513.x, x_3513.y, x_3513.z));
    let x_3516 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3515.x, x_3515.y, x_3515.z, x_3516.w);
    let x_3518 : vec3<f32> = u_xlat2;
    let x_3519 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3518, vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3522, 0.0f, 1.0f);
    let x_3524 : vec3<f32> = u_xlat34;
    let x_3525 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3524, vec3<f32>(x_3525.x, x_3525.y, x_3525.z));
    let x_3530 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3530, 0.0f, 1.0f);
    let x_3533 : f32 = u_xlat81;
    let x_3534 : f32 = u_xlat81;
    u_xlat81 = (x_3533 * x_3534);
    let x_3536 : f32 = u_xlat81;
    let x_3538 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3536 * x_3538) + 1.00001001358032226562f);
    let x_3542 : f32 = u_xlat8.x;
    let x_3544 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3542 * x_3544);
    let x_3547 : f32 = u_xlat81;
    let x_3548 : f32 = u_xlat81;
    u_xlat81 = (x_3547 * x_3548);
    let x_3551 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3551, 0.10000000149011611938f);
    let x_3554 : f32 = u_xlat81;
    let x_3556 : f32 = u_xlat8.x;
    u_xlat81 = (x_3554 * x_3556);
    let x_3559 : f32 = u_xlat4.x;
    let x_3560 : f32 = u_xlat81;
    u_xlat81 = (x_3559 * x_3560);
    let x_3562 : f32 = u_xlat5;
    let x_3563 : f32 = u_xlat81;
    u_xlat81 = (x_3562 / x_3563);
    let x_3565 : vec4<f32> = u_xlat0;
    let x_3567 : f32 = u_xlat81;
    let x_3570 : vec3<f32> = u_xlat29;
    let x_3571 : vec3<f32> = ((vec3<f32>(x_3565.x, x_3565.y, x_3565.z) * vec3<f32>(x_3567, x_3567, x_3567)) + x_3570);
    let x_3572 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3571.x, x_3571.y, x_3571.z, x_3572.w);
    let x_3574 : vec4<f32> = u_xlat8;
    let x_3576 : vec4<f32> = u_xlat10;
    let x_3579 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_3574.x, x_3574.y, x_3574.z) * vec3<f32>(x_3576.x, x_3576.y, x_3576.z)) + x_3579);

    continuing {
      let x_3581 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3581 + bitcast<u32>(1i));
    }
  }
  let x_3583 : vec3<f32> = u_xlat32;
  let x_3584 : vec4<f32> = u_xlat6;
  let x_3587 : vec4<f32> = u_xlat3;
  let x_3589 : vec3<f32> = ((x_3583 * vec3<f32>(x_3584.x, x_3584.y, x_3584.z)) + vec3<f32>(x_3587.x, x_3587.y, x_3587.z));
  let x_3590 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3589.x, x_3589.y, x_3589.z, x_3590.w);
  let x_3592 : vec3<f32> = u_xlat30;
  let x_3593 : vec4<f32> = u_xlat0;
  let x_3595 : vec3<f32> = (x_3592 + vec3<f32>(x_3593.x, x_3593.y, x_3593.z));
  let x_3596 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3595.x, x_3595.y, x_3595.z, x_3596.w);
  let x_3598 : f32 = u_xlat77;
  let x_3599 : f32 = u_xlat77;
  u_xlat75 = (x_3598 * -(x_3599));
  let x_3602 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3602);
  let x_3604 : vec4<f32> = u_xlat0;
  let x_3607 : vec4<f32> = x_29.unity_FogColor;
  let x_3610 : vec3<f32> = (vec3<f32>(x_3604.x, x_3604.y, x_3604.z) + -(vec3<f32>(x_3607.x, x_3607.y, x_3607.z)));
  let x_3611 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3610.x, x_3610.y, x_3610.z, x_3611.w);
  let x_3615 : f32 = u_xlat75;
  let x_3617 : vec4<f32> = u_xlat0;
  let x_3621 : vec4<f32> = x_29.unity_FogColor;
  let x_3623 : vec3<f32> = ((vec3<f32>(x_3615, x_3615, x_3615) * vec3<f32>(x_3617.x, x_3617.y, x_3617.z)) + vec3<f32>(x_3621.x, x_3621.y, x_3621.z));
  let x_3624 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3623.x, x_3623.y, x_3623.z, x_3624.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


