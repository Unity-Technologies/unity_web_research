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

@group(1) @binding(3) var<uniform> x_152 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlatu77 : u32;

var<private> u_xlati77 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1861 : UnityPerDraw;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2103 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

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

var<private> u_xlatu28 : u32;

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
  var x_1756 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2251 : f32;
  var x_2264 : f32;
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
  var x_3597 : f32;
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
  let x_144 : vec3<f32> = vs_TEXCOORD7;
  let x_155 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres0;
  let x_158 : vec3<f32> = (x_144 + -(vec3<f32>(x_155.x, x_155.y, x_155.z)));
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = vs_TEXCOORD7;
  let x_164 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres1;
  let x_167 : vec3<f32> = (x_162 + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec3<f32> = vs_TEXCOORD7;
  let x_174 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_171 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_179 : vec3<f32> = vs_TEXCOORD7;
  let x_181 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres3;
  let x_184 : vec3<f32> = (x_179 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec3<f32> = u_xlat5;
  let x_200 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_199, x_200);
  let x_203 : vec4<f32> = u_xlat6;
  let x_205 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_212 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_152.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_212 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_223 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_235);
  let x_241 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_245);
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = max(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_258.x, x_258.y, x_258.z);
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_262, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_268 : f32 = u_xlat77;
  u_xlat77 = (-(x_268) + 4.0f);
  let x_273 : f32 = u_xlat77;
  u_xlatu77 = u32(x_273);
  let x_277 : u32 = u_xlatu77;
  u_xlati77 = (bitcast<i32>(x_277) << bitcast<u32>(2i));
  let x_280 : vec3<f32> = vs_TEXCOORD7;
  let x_282 : i32 = u_xlati77;
  let x_285 : i32 = u_xlati77;
  let x_289 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_282 + 1i) / 4i)][((x_285 + 1i) % 4i)];
  let x_291 : vec3<f32> = (vec3<f32>(x_280.y, x_280.y, x_280.y) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : i32 = u_xlati77;
  let x_296 : i32 = u_xlati77;
  let x_299 : vec4<f32> = x_152.x_MainLightWorldToShadow[(x_294 / 4i)][(x_296 % 4i)];
  let x_301 : vec3<f32> = vs_TEXCOORD7;
  let x_304 : vec4<f32> = u_xlat3;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.x, x_301.x)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : i32 = u_xlati77;
  let x_312 : i32 = u_xlati77;
  let x_316 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_309 + 2i) / 4i)][((x_312 + 2i) % 4i)];
  let x_318 : vec3<f32> = vs_TEXCOORD7;
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : i32 = u_xlati77;
  let x_331 : i32 = u_xlati77;
  let x_335 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_328 + 3i) / 4i)][((x_331 + 3i) % 4i)];
  let x_337 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_342 : f32 = vs_TEXCOORD7.y;
  let x_344 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat77 = (x_342 * x_344);
  let x_347 : f32 = x_29.unity_MatrixV[0i].z;
  let x_349 : f32 = vs_TEXCOORD7.x;
  let x_351 : f32 = u_xlat77;
  u_xlat77 = ((x_347 * x_349) + x_351);
  let x_354 : f32 = x_29.unity_MatrixV[2i].z;
  let x_356 : f32 = vs_TEXCOORD7.z;
  let x_358 : f32 = u_xlat77;
  u_xlat77 = ((x_354 * x_356) + x_358);
  let x_360 : f32 = u_xlat77;
  let x_362 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat77 = (x_360 + x_362);
  let x_364 : f32 = u_xlat77;
  let x_367 : f32 = x_29.x_ProjectionParams.y;
  u_xlat77 = (-(x_364) + -(x_367));
  let x_370 : f32 = u_xlat77;
  u_xlat77 = max(x_370, 0.0f);
  let x_372 : f32 = u_xlat77;
  let x_375 : f32 = x_29.unity_FogParams.x;
  u_xlat77 = (x_372 * x_375);
  let x_382 : vec4<f32> = vs_TEXCOORD0;
  let x_385 : f32 = x_29.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_382.z, x_382.w), x_385);
  u_xlat4 = x_386;
  let x_391 : vec4<f32> = vs_TEXCOORD0;
  let x_394 : f32 = x_29.x_GlobalMipBias.x;
  let x_395 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_391.z, x_391.w), x_394);
  u_xlat5 = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_397 : vec4<f32> = u_xlat4;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : vec3<f32> = u_xlat2;
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_405, vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : f32 = u_xlat78;
  u_xlat78 = (x_409 + 0.5f);
  let x_412 : f32 = u_xlat78;
  let x_414 : vec3<f32> = u_xlat5;
  let x_415 : vec3<f32> = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat4.w;
  u_xlat78 = max(x_419, 0.00009999999747378752f);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : f32 = u_xlat78;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) / vec3<f32>(x_424, x_424, x_424));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  u_xlat78 = ((-(x_429) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_435 : f32 = u_xlat78;
  u_xlat79 = (-(x_435) + 1.0f);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : f32 = u_xlat78;
  u_xlat5 = (vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440, x_440, x_440));
  let x_443 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : f32 = u_xlat1;
  let x_452 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = ((vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_452.x, x_452.y, x_452.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat1;
  let x_465 : f32 = u_xlat1;
  u_xlat78 = (x_464 * x_465);
  let x_467 : f32 = u_xlat78;
  u_xlat78 = max(x_467, 0.0078125f);
  let x_471 : f32 = u_xlat78;
  let x_472 : f32 = u_xlat78;
  u_xlat80 = (x_471 * x_472);
  let x_476 : f32 = u_xlat0.w;
  let x_477 : f32 = u_xlat79;
  u_xlat75 = (x_476 + x_477);
  let x_479 : f32 = u_xlat75;
  u_xlat75 = clamp(x_479, 0.0f, 1.0f);
  let x_481 : f32 = u_xlat78;
  u_xlat79 = ((x_481 * 4.0f) + 2.0f);
  let x_487 : f32 = x_152.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_487);
  let x_489 : bool = u_xlatb6;
  if (x_489) {
    let x_493 : f32 = x_152.x_MainLightShadowParams.y;
    u_xlatb6 = (x_493 == 1.0f);
    let x_495 : bool = u_xlatb6;
    if (x_495) {
      let x_498 : vec4<f32> = u_xlat3;
      let x_501 : vec4<f32> = x_152.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) + x_501);
      let x_504 : vec4<f32> = u_xlat6;
      let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
      let x_507 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_520 : vec3<f32> = txVec0;
      let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_520.xy, x_520.z);
      u_xlat7.x = x_522;
      let x_525 : vec4<f32> = u_xlat6;
      let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
      let x_528 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_535 : vec3<f32> = txVec1;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_535.xy, x_535.z);
      u_xlat7.y = x_537;
      let x_539 : vec4<f32> = u_xlat3;
      let x_542 : vec4<f32> = x_152.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) + x_542);
      let x_545 : vec4<f32> = u_xlat6;
      let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
      let x_548 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec2;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.z = x_557;
      let x_560 : vec4<f32> = u_xlat6;
      let x_561 : vec2<f32> = vec2<f32>(x_560.z, x_560.w);
      let x_563 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_570 : vec3<f32> = txVec3;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat7.w = x_572;
      let x_574 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_574, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_582 : f32 = x_152.x_MainLightShadowParams.y;
      u_xlatb31 = (x_582 == 2.0f);
      let x_584 : bool = u_xlatb31;
      if (x_584) {
        let x_589 : vec4<f32> = u_xlat3;
        let x_592 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592.z, x_592.w)) + vec2<f32>(0.5f, 0.5f));
        let x_597 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_597);
        let x_599 : vec4<f32> = u_xlat3;
        let x_602 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_605 : vec2<f32> = u_xlat31;
        let x_607 : vec2<f32> = ((vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_602.z, x_602.w)) + -(x_605));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_611.x, x_611.x, x_611.y, x_611.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_616 : vec4<f32> = u_xlat8;
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_616.x, x_616.x, x_616.z, x_616.z) * vec4<f32>(x_618.x, x_618.x, x_618.z, x_618.z));
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_622.y, x_622.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_627 : vec4<f32> = u_xlat9;
        let x_630 : vec4<f32> = u_xlat7;
        let x_633 : vec2<f32> = ((vec2<f32>(x_627.x, x_627.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_630.x, x_630.y)));
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_633.x, x_634.y, x_633.y, x_634.w);
        let x_636 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = (-(vec2<f32>(x_636.x, x_636.y)) + vec2<f32>(1.0f, 1.0f));
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_644 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_644.x, x_644.y), vec2<f32>(0.0f, 0.0f));
        let x_648 : vec2<f32> = u_xlat59;
        let x_650 : vec2<f32> = u_xlat59;
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_648) * x_650) + vec2<f32>(x_652.x, x_652.y));
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec2<f32> = max(vec2<f32>(x_655.x, x_655.y), vec2<f32>(0.0f, 0.0f));
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec4<f32> = u_xlat7;
        let x_663 : vec4<f32> = u_xlat7;
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec2<f32> = ((-(vec2<f32>(x_660.x, x_660.y)) * vec2<f32>(x_663.x, x_663.y)) + vec2<f32>(x_666.y, x_666.w));
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_671 + vec2<f32>(1.0f, 1.0f));
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) + vec2<f32>(1.0f, 1.0f));
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_679 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = (vec2<f32>(x_679.x, x_679.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_690 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat59;
        let x_693 : vec2<f32> = (x_692 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_697 : vec4<f32> = u_xlat7;
        let x_699 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_700 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = (vec2<f32>(x_702.y, x_702.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : f32 = u_xlat9.x;
        u_xlat10.z = x_708;
        let x_711 : f32 = u_xlat7.x;
        u_xlat10.w = x_711;
        let x_714 : f32 = u_xlat12.x;
        u_xlat11.z = x_714;
        let x_717 : f32 = u_xlat57.x;
        u_xlat11.w = x_717;
        let x_719 : vec4<f32> = u_xlat10;
        let x_721 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_719.z, x_719.w, x_719.x, x_719.z) + vec4<f32>(x_721.z, x_721.w, x_721.x, x_721.z));
        let x_725 : f32 = u_xlat10.y;
        u_xlat9.z = x_725;
        let x_728 : f32 = u_xlat7.y;
        u_xlat9.w = x_728;
        let x_731 : f32 = u_xlat11.y;
        u_xlat12.z = x_731;
        let x_734 : f32 = u_xlat57.y;
        u_xlat12.w = x_734;
        let x_736 : vec4<f32> = u_xlat9;
        let x_738 : vec4<f32> = u_xlat12;
        let x_740 : vec3<f32> = (vec3<f32>(x_736.z, x_736.y, x_736.w) + vec3<f32>(x_738.z, x_738.y, x_738.w));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_743 : vec4<f32> = u_xlat11;
        let x_745 : vec4<f32> = u_xlat8;
        let x_747 : vec3<f32> = (vec3<f32>(x_743.x, x_743.z, x_743.w) / vec3<f32>(x_745.z, x_745.w, x_745.y));
        let x_748 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
        let x_750 : vec4<f32> = u_xlat9;
        let x_755 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_756 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
        let x_758 : vec4<f32> = u_xlat12;
        let x_760 : vec4<f32> = u_xlat7;
        let x_762 : vec3<f32> = (vec3<f32>(x_758.z, x_758.y, x_758.w) / vec3<f32>(x_760.x, x_760.y, x_760.z));
        let x_763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat10;
        let x_767 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_768 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat9;
        let x_773 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_775 : vec3<f32> = (vec3<f32>(x_770.y, x_770.x, x_770.z) * vec3<f32>(x_773.x, x_773.x, x_773.x));
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat10;
        let x_781 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_783 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_781.y, x_781.y, x_781.y));
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_787 : f32 = u_xlat10.x;
        u_xlat9.w = x_787;
        let x_789 : vec2<f32> = u_xlat31;
        let x_792 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_795 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) * vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y)) + vec4<f32>(x_795.y, x_795.w, x_795.x, x_795.w));
        let x_798 : vec2<f32> = u_xlat31;
        let x_800 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat9;
        let x_805 : vec2<f32> = ((x_798 * vec2<f32>(x_800.x, x_800.y)) + vec2<f32>(x_803.z, x_803.w));
        let x_806 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_809 : f32 = u_xlat9.y;
        u_xlat10.w = x_809;
        let x_811 : vec4<f32> = u_xlat10;
        let x_812 : vec2<f32> = vec2<f32>(x_811.y, x_811.z);
        let x_813 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_813.x, x_812.x, x_813.z, x_812.y);
        let x_816 : vec2<f32> = u_xlat31;
        let x_819 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y) * vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y)) + vec4<f32>(x_822.x, x_822.y, x_822.z, x_822.y));
        let x_825 : vec2<f32> = u_xlat31;
        let x_828 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y) * vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y)) + vec4<f32>(x_831.w, x_831.y, x_831.w, x_831.z));
        let x_834 : vec2<f32> = u_xlat31;
        let x_837 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_840 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_834.x, x_834.y, x_834.x, x_834.y) * vec4<f32>(x_837.x, x_837.y, x_837.x, x_837.y)) + vec4<f32>(x_840.x, x_840.w, x_840.z, x_840.w));
        let x_844 : vec4<f32> = u_xlat7;
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_844.x, x_844.x, x_844.x, x_844.y) * vec4<f32>(x_846.z, x_846.w, x_846.y, x_846.z));
        let x_850 : vec4<f32> = u_xlat7;
        let x_852 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_850.y, x_850.y, x_850.z, x_850.z) * x_852);
        let x_855 : f32 = u_xlat7.z;
        let x_857 : f32 = u_xlat8.y;
        u_xlat31.x = (x_855 * x_857);
        let x_861 : vec4<f32> = u_xlat11;
        let x_862 : vec2<f32> = vec2<f32>(x_861.x, x_861.y);
        let x_864 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_872 : vec3<f32> = txVec4;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_872.xy, x_872.z);
        u_xlat56 = x_874;
        let x_876 : vec4<f32> = u_xlat11;
        let x_877 : vec2<f32> = vec2<f32>(x_876.z, x_876.w);
        let x_879 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_887 : vec3<f32> = txVec5;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat81 = x_889;
        let x_890 : f32 = u_xlat81;
        let x_892 : f32 = u_xlat14.y;
        u_xlat81 = (x_890 * x_892);
        let x_895 : f32 = u_xlat14.x;
        let x_896 : f32 = u_xlat56;
        let x_898 : f32 = u_xlat81;
        u_xlat56 = ((x_895 * x_896) + x_898);
        let x_901 : vec4<f32> = u_xlat12;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_904 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_911 : vec3<f32> = txVec6;
        let x_913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_911.xy, x_911.z);
        u_xlat81 = x_913;
        let x_915 : f32 = u_xlat14.z;
        let x_916 : f32 = u_xlat81;
        let x_918 : f32 = u_xlat56;
        u_xlat56 = ((x_915 * x_916) + x_918);
        let x_921 : vec4<f32> = u_xlat10;
        let x_922 : vec2<f32> = vec2<f32>(x_921.x, x_921.y);
        let x_924 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_922.x, x_922.y, x_924);
        let x_931 : vec3<f32> = txVec7;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
        u_xlat81 = x_933;
        let x_935 : f32 = u_xlat14.w;
        let x_936 : f32 = u_xlat81;
        let x_938 : f32 = u_xlat56;
        u_xlat56 = ((x_935 * x_936) + x_938);
        let x_941 : vec4<f32> = u_xlat13;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec8;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat81 = x_953;
        let x_955 : f32 = u_xlat15.x;
        let x_956 : f32 = u_xlat81;
        let x_958 : f32 = u_xlat56;
        u_xlat56 = ((x_955 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat13;
        let x_962 : vec2<f32> = vec2<f32>(x_961.z, x_961.w);
        let x_964 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec9;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_971.xy, x_971.z);
        u_xlat81 = x_973;
        let x_975 : f32 = u_xlat15.y;
        let x_976 : f32 = u_xlat81;
        let x_978 : f32 = u_xlat56;
        u_xlat56 = ((x_975 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat10;
        let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
        let x_984 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec10;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat81 = x_993;
        let x_995 : f32 = u_xlat15.z;
        let x_996 : f32 = u_xlat81;
        let x_998 : f32 = u_xlat56;
        u_xlat56 = ((x_995 * x_996) + x_998);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
        let x_1004 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1011 : vec3<f32> = txVec11;
        let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
        u_xlat81 = x_1013;
        let x_1015 : f32 = u_xlat15.w;
        let x_1016 : f32 = u_xlat81;
        let x_1018 : f32 = u_xlat56;
        u_xlat56 = ((x_1015 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat9;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.z, x_1021.w);
        let x_1024 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec12;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
        u_xlat81 = x_1033;
        let x_1035 : f32 = u_xlat31.x;
        let x_1036 : f32 = u_xlat81;
        let x_1038 : f32 = u_xlat56;
        u_xlat6.x = ((x_1035 * x_1036) + x_1038);
      } else {
        let x_1042 : vec4<f32> = u_xlat3;
        let x_1045 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1049 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1049);
        let x_1051 : vec4<f32> = u_xlat3;
        let x_1054 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1057 : vec2<f32> = u_xlat31;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.z, x_1054.w)) + -(x_1057));
        let x_1060 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1062.x, x_1062.x, x_1062.y, x_1062.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.z, x_1065.z) * vec4<f32>(x_1067.x, x_1067.x, x_1067.z, x_1067.z));
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1074 : vec2<f32> = (vec2<f32>(x_1070.y, x_1070.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1077.x, x_1077.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1080.x, x_1080.y)));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = (-(vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1092 : vec2<f32> = min(vec2<f32>(x_1090.x, x_1090.y), vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec2<f32> = ((-(vec2<f32>(x_1095.x, x_1095.y)) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.x, x_1101.z));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1108 : vec2<f32> = max(vec2<f32>(x_1106.x, x_1106.y), vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = ((-(vec2<f32>(x_1111.x, x_1111.y)) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.y, x_1117.w));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1122 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1126 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1126 * 0.08163200318813323975f);
        let x_1130 : vec2<f32> = u_xlat57;
        let x_1133 : vec2<f32> = (vec2<f32>(x_1130.y, x_1130.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1140 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1140 * 0.08163200318813323975f);
        let x_1144 : f32 = u_xlat11.y;
        u_xlat9.x = x_1144;
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1153.x, x_1154.z, x_1153.y);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1164 : f32 = u_xlat57.x;
        u_xlat8.y = x_1164;
        let x_1167 : f32 = u_xlat10.y;
        u_xlat8.w = x_1167;
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1169 + x_1170);
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1172.y, x_1172.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.y, x_1178.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1182.w);
        let x_1185 : f32 = u_xlat57.y;
        u_xlat10.y = x_1185;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1187 + x_1188);
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1190 / x_1191);
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1193 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1199 : vec4<f32> = u_xlat10;
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1199 / x_1200);
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1202 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1204 : vec4<f32> = u_xlat8;
        let x_1207 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1204.w, x_1204.x, x_1204.y, x_1204.z) * vec4<f32>(x_1207.x, x_1207.x, x_1207.x, x_1207.x));
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1213 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1210.x, x_1210.w, x_1210.y, x_1210.z) * vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1217 : vec3<f32> = vec3<f32>(x_1216.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1217.z);
        let x_1221 : f32 = u_xlat10.x;
        u_xlat11.y = x_1221;
        let x_1223 : vec2<f32> = u_xlat31;
        let x_1226 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y) * vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) + vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1229.y));
        let x_1232 : vec2<f32> = u_xlat31;
        let x_1234 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = ((x_1232 * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.w, x_1237.y));
        let x_1240 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
        let x_1243 : f32 = u_xlat11.y;
        u_xlat8.y = x_1243;
        let x_1246 : f32 = u_xlat10.z;
        u_xlat11.y = x_1246;
        let x_1248 : vec2<f32> = u_xlat31;
        let x_1251 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1258 : vec2<f32> = u_xlat31;
        let x_1260 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1258 * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat11.y;
        u_xlat8.z = x_1267;
        let x_1269 : vec2<f32> = u_xlat31;
        let x_1272 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.z));
        let x_1279 : f32 = u_xlat10.w;
        u_xlat11.y = x_1279;
        let x_1282 : vec2<f32> = u_xlat31;
        let x_1285 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.y));
        let x_1292 : vec2<f32> = u_xlat31;
        let x_1294 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1292 * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1301 : f32 = u_xlat11.y;
        u_xlat8.w = x_1301;
        let x_1304 : vec2<f32> = u_xlat31;
        let x_1306 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1311 : vec2<f32> = ((x_1304 * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.x, x_1309.w));
        let x_1312 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat11;
        let x_1315 : vec3<f32> = vec3<f32>(x_1314.x, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1315.x, x_1316.y, x_1315.y, x_1315.z);
        let x_1318 : vec2<f32> = u_xlat31;
        let x_1321 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y) * vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y)) + vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1324.y));
        let x_1328 : vec2<f32> = u_xlat31;
        let x_1330 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1328 * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.w, x_1333.y));
        let x_1337 : f32 = u_xlat8.x;
        u_xlat10.x = x_1337;
        let x_1339 : vec2<f32> = u_xlat31;
        let x_1341 : vec4<f32> = x_152.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1339 * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1344.x, x_1344.y));
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x) * x_1350);
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1353.y, x_1353.y, x_1353.y, x_1353.y) * x_1355);
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1358.z, x_1358.z, x_1358.z, x_1358.z) * x_1360);
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1362.w, x_1362.w, x_1362.w, x_1362.w) * x_1364);
        let x_1367 : vec4<f32> = u_xlat12;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec13;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat81 = x_1379;
        let x_1381 : vec4<f32> = u_xlat12;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.z, x_1381.w);
        let x_1384 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec14;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat8.x = x_1393;
        let x_1396 : f32 = u_xlat8.x;
        let x_1398 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1396 * x_1398);
        let x_1402 : f32 = u_xlat18.x;
        let x_1403 : f32 = u_xlat81;
        let x_1406 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1402 * x_1403) + x_1406);
        let x_1409 : vec4<f32> = u_xlat13;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec15;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat8.x = x_1421;
        let x_1424 : f32 = u_xlat18.z;
        let x_1426 : f32 = u_xlat8.x;
        let x_1428 : f32 = u_xlat81;
        u_xlat81 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat15;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec16;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat8.x = x_1443;
        let x_1446 : f32 = u_xlat18.w;
        let x_1448 : f32 = u_xlat8.x;
        let x_1450 : f32 = u_xlat81;
        u_xlat81 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat14;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec17;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat8.x = x_1465;
        let x_1468 : f32 = u_xlat19.x;
        let x_1470 : f32 = u_xlat8.x;
        let x_1472 : f32 = u_xlat81;
        u_xlat81 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec4<f32> = u_xlat14;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.z, x_1475.w);
        let x_1478 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec18;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat8.x = x_1487;
        let x_1490 : f32 = u_xlat19.y;
        let x_1492 : f32 = u_xlat8.x;
        let x_1494 : f32 = u_xlat81;
        u_xlat81 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec2<f32> = u_xlat63;
        let x_1499 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec19;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat8.x = x_1508;
        let x_1511 : f32 = u_xlat19.z;
        let x_1513 : f32 = u_xlat8.x;
        let x_1515 : f32 = u_xlat81;
        u_xlat81 = ((x_1511 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat15;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.z, x_1518.w);
        let x_1521 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec20;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat8.x = x_1530;
        let x_1533 : f32 = u_xlat19.w;
        let x_1535 : f32 = u_xlat8.x;
        let x_1537 : f32 = u_xlat81;
        u_xlat81 = ((x_1533 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat16;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.x, x_1540.y);
        let x_1543 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec21;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat8.x = x_1552;
        let x_1555 : f32 = u_xlat20.x;
        let x_1557 : f32 = u_xlat8.x;
        let x_1559 : f32 = u_xlat81;
        u_xlat81 = ((x_1555 * x_1557) + x_1559);
        let x_1562 : vec4<f32> = u_xlat16;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.z, x_1562.w);
        let x_1565 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec22;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat8.x = x_1574;
        let x_1577 : f32 = u_xlat20.y;
        let x_1579 : f32 = u_xlat8.x;
        let x_1581 : f32 = u_xlat81;
        u_xlat81 = ((x_1577 * x_1579) + x_1581);
        let x_1584 : vec2<f32> = u_xlat33;
        let x_1586 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec23;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1593.xy, x_1593.z);
        u_xlat8.x = x_1595;
        let x_1598 : f32 = u_xlat20.z;
        let x_1600 : f32 = u_xlat8.x;
        let x_1602 : f32 = u_xlat81;
        u_xlat81 = ((x_1598 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat17;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec24;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat8.x = x_1617;
        let x_1620 : f32 = u_xlat20.w;
        let x_1622 : f32 = u_xlat8.x;
        let x_1624 : f32 = u_xlat81;
        u_xlat81 = ((x_1620 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat11;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec25;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat8.x = x_1639;
        let x_1642 : f32 = u_xlat7.x;
        let x_1644 : f32 = u_xlat8.x;
        let x_1646 : f32 = u_xlat81;
        u_xlat81 = ((x_1642 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat11;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.z, x_1649.w);
        let x_1652 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec26;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat7.x = x_1661;
        let x_1664 : f32 = u_xlat7.y;
        let x_1666 : f32 = u_xlat7.x;
        let x_1668 : f32 = u_xlat81;
        u_xlat81 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat60;
        let x_1673 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec27;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1680.xy, x_1680.z);
        u_xlat7.x = x_1682;
        let x_1685 : f32 = u_xlat7.z;
        let x_1687 : f32 = u_xlat7.x;
        let x_1689 : f32 = u_xlat81;
        u_xlat81 = ((x_1685 * x_1687) + x_1689);
        let x_1692 : vec2<f32> = u_xlat31;
        let x_1694 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec28;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
        u_xlat31.x = x_1703;
        let x_1706 : f32 = u_xlat7.w;
        let x_1708 : f32 = u_xlat31.x;
        let x_1710 : f32 = u_xlat81;
        u_xlat6.x = ((x_1706 * x_1708) + x_1710);
      }
    }
  } else {
    let x_1715 : vec4<f32> = u_xlat3;
    let x_1716 : vec2<f32> = vec2<f32>(x_1715.x, x_1715.y);
    let x_1718 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
    let x_1725 : vec3<f32> = txVec29;
    let x_1727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1725.xy, x_1725.z);
    u_xlat6.x = x_1727;
  }
  let x_1730 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1730) + 1.0f);
  let x_1735 : f32 = u_xlat6.x;
  let x_1737 : f32 = x_152.x_MainLightShadowParams.x;
  let x_1740 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1735 * x_1737) + x_1740);
  let x_1745 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_1745);
  let x_1749 : f32 = u_xlat3.z;
  u_xlatb53 = (x_1749 >= 1.0f);
  let x_1751 : bool = u_xlatb53;
  let x_1752 : bool = u_xlatb28;
  u_xlatb28 = (x_1751 | x_1752);
  let x_1754 : bool = u_xlatb28;
  if (x_1754) {
    x_1756 = 1.0f;
  } else {
    let x_1761 : f32 = u_xlat3.x;
    x_1756 = x_1761;
  }
  let x_1762 : f32 = x_1756;
  u_xlat3.x = x_1762;
  let x_1764 : vec3<f32> = vs_TEXCOORD7;
  let x_1766 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1768 : vec3<f32> = (x_1764 + -(x_1766));
  let x_1769 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1772 : vec4<f32> = u_xlat6;
  let x_1774 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1772.x, x_1772.y, x_1772.z), vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
  let x_1778 : f32 = u_xlat28;
  let x_1780 : f32 = x_152.x_MainLightShadowParams.z;
  let x_1783 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat53 = ((x_1778 * x_1780) + x_1783);
  let x_1785 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1785, 0.0f, 1.0f);
  let x_1788 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1788) + 1.0f);
  let x_1792 : f32 = u_xlat53;
  let x_1794 : f32 = u_xlat6.x;
  let x_1797 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1792 * x_1794) + x_1797);
  let x_1800 : vec3<f32> = u_xlat26;
  let x_1802 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(-(x_1800), x_1802);
  let x_1804 : f32 = u_xlat53;
  let x_1805 : f32 = u_xlat53;
  u_xlat53 = (x_1804 + x_1805);
  let x_1807 : vec3<f32> = u_xlat2;
  let x_1808 : f32 = u_xlat53;
  let x_1812 : vec3<f32> = u_xlat26;
  let x_1814 : vec3<f32> = ((x_1807 * -(vec3<f32>(x_1808, x_1808, x_1808))) + -(x_1812));
  let x_1815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1817 : vec3<f32> = u_xlat2;
  let x_1818 : vec3<f32> = u_xlat26;
  u_xlat53 = dot(x_1817, x_1818);
  let x_1820 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1820, 0.0f, 1.0f);
  let x_1822 : f32 = u_xlat53;
  u_xlat53 = (-(x_1822) + 1.0f);
  let x_1825 : f32 = u_xlat53;
  let x_1826 : f32 = u_xlat53;
  u_xlat53 = (x_1825 * x_1826);
  let x_1828 : f32 = u_xlat53;
  let x_1829 : f32 = u_xlat53;
  u_xlat53 = (x_1828 * x_1829);
  let x_1831 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1831) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1837 : f32 = u_xlat1;
  let x_1838 : f32 = u_xlat81;
  u_xlat1 = (x_1837 * x_1838);
  let x_1840 : f32 = u_xlat1;
  u_xlat1 = (x_1840 * 6.0f);
  let x_1851 : vec4<f32> = u_xlat6;
  let x_1853 : f32 = u_xlat1;
  let x_1854 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1851.x, x_1851.y, x_1851.z), x_1853);
  u_xlat6 = x_1854;
  let x_1856 : f32 = u_xlat6.w;
  u_xlat1 = (x_1856 + -1.0f);
  let x_1863 : f32 = x_1861.unity_SpecCube0_HDR.w;
  let x_1864 : f32 = u_xlat1;
  u_xlat1 = ((x_1863 * x_1864) + 1.0f);
  let x_1867 : f32 = u_xlat1;
  u_xlat1 = max(x_1867, 0.0f);
  let x_1869 : f32 = u_xlat1;
  u_xlat1 = log2(x_1869);
  let x_1871 : f32 = u_xlat1;
  let x_1873 : f32 = x_1861.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1871 * x_1873);
  let x_1875 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1875);
  let x_1877 : f32 = u_xlat1;
  let x_1879 : f32 = x_1861.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1877 * x_1879);
  let x_1881 : vec4<f32> = u_xlat6;
  let x_1883 : f32 = u_xlat1;
  let x_1885 : vec3<f32> = (vec3<f32>(x_1881.x, x_1881.y, x_1881.z) * vec3<f32>(x_1883, x_1883, x_1883));
  let x_1886 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
  let x_1888 : f32 = u_xlat78;
  let x_1890 : f32 = u_xlat78;
  let x_1894 : vec2<f32> = ((vec2<f32>(x_1888, x_1888) * vec2<f32>(x_1890, x_1890)) + vec2<f32>(-1.0f, 1.0f));
  let x_1895 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1894.x, x_1894.y, x_1895.z, x_1895.w);
  let x_1898 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1898);
  let x_1901 : vec4<f32> = u_xlat0;
  let x_1904 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1901.x, x_1901.y, x_1901.z)) + vec3<f32>(x_1904, x_1904, x_1904));
  let x_1907 : f32 = u_xlat53;
  let x_1909 : vec3<f32> = u_xlat32;
  let x_1911 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1907, x_1907, x_1907) * x_1909) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : f32 = u_xlat1;
  let x_1916 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1914, x_1914, x_1914) * x_1916);
  let x_1918 : vec4<f32> = u_xlat6;
  let x_1920 : vec3<f32> = u_xlat32;
  let x_1921 : vec3<f32> = (vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * x_1920);
  let x_1922 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
  let x_1924 : vec4<f32> = u_xlat4;
  let x_1926 : vec3<f32> = u_xlat5;
  let x_1928 : vec4<f32> = u_xlat6;
  let x_1930 : vec3<f32> = ((vec3<f32>(x_1924.x, x_1924.y, x_1924.z) * x_1926) + vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  let x_1934 : f32 = u_xlat3.x;
  let x_1936 : f32 = x_1861.unity_LightData.z;
  u_xlat75 = (x_1934 * x_1936);
  let x_1938 : vec3<f32> = u_xlat2;
  let x_1940 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1938, vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1943, 0.0f, 1.0f);
  let x_1945 : f32 = u_xlat75;
  let x_1946 : f32 = u_xlat1;
  u_xlat75 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat75;
  let x_1951 : vec4<f32> = x_29.x_MainLightColor;
  let x_1953 : vec3<f32> = (vec3<f32>(x_1948, x_1948, x_1948) * vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
  let x_1954 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1953.x, x_1954.y, x_1953.y, x_1953.z);
  let x_1956 : vec3<f32> = u_xlat26;
  let x_1958 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1960 : vec3<f32> = (x_1956 + vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
  let x_1961 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  let x_1963 : vec4<f32> = u_xlat6;
  let x_1965 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : f32 = u_xlat75;
  u_xlat75 = max(x_1968, 1.17549435e-38f);
  let x_1971 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1971);
  let x_1973 : f32 = u_xlat75;
  let x_1975 : vec4<f32> = u_xlat6;
  let x_1977 : vec3<f32> = (vec3<f32>(x_1973, x_1973, x_1973) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1980 : vec3<f32> = u_xlat2;
  let x_1981 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1980, vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1984, 0.0f, 1.0f);
  let x_1987 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1989 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
  let x_1992 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1992, 0.0f, 1.0f);
  let x_1994 : f32 = u_xlat75;
  let x_1995 : f32 = u_xlat75;
  u_xlat75 = (x_1994 * x_1995);
  let x_1997 : f32 = u_xlat75;
  let x_1999 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1997 * x_1999) + 1.00001001358032226562f);
  let x_2003 : f32 = u_xlat1;
  let x_2004 : f32 = u_xlat1;
  u_xlat1 = (x_2003 * x_2004);
  let x_2006 : f32 = u_xlat75;
  let x_2007 : f32 = u_xlat75;
  u_xlat75 = (x_2006 * x_2007);
  let x_2009 : f32 = u_xlat1;
  u_xlat1 = max(x_2009, 0.10000000149011611938f);
  let x_2012 : f32 = u_xlat75;
  let x_2013 : f32 = u_xlat1;
  u_xlat75 = (x_2012 * x_2013);
  let x_2015 : f32 = u_xlat79;
  let x_2016 : f32 = u_xlat75;
  u_xlat75 = (x_2015 * x_2016);
  let x_2018 : f32 = u_xlat80;
  let x_2019 : f32 = u_xlat75;
  u_xlat75 = (x_2018 / x_2019);
  let x_2021 : vec4<f32> = u_xlat0;
  let x_2023 : f32 = u_xlat75;
  let x_2026 : vec3<f32> = u_xlat5;
  let x_2027 : vec3<f32> = ((vec3<f32>(x_2021.x, x_2021.y, x_2021.z) * vec3<f32>(x_2023, x_2023, x_2023)) + x_2026);
  let x_2028 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2031 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2033 : f32 = x_1861.unity_LightData.y;
  u_xlat75 = min(x_2031, x_2033);
  let x_2036 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2036));
  let x_2039 : f32 = u_xlat28;
  let x_2042 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_2045 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2039 * x_2042) + x_2045);
  let x_2047 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2047, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2059 : u32 = u_xlatu_loop_1;
    let x_2060 : u32 = u_xlatu75;
    if ((x_2059 < x_2060)) {
    } else {
      break;
    }
    let x_2063 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2063 >> 2u);
    let x_2066 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2066 & 3u));
    let x_2069 : u32 = u_xlatu81;
    let x_2072 : vec4<f32> = x_1861.unity_LightIndices[bitcast<i32>(x_2069)];
    let x_2082 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2087 : vec4<u32> = indexable[x_2082];
    u_xlat81 = dot(x_2072, bitcast<vec4<f32>>(x_2087));
    let x_2091 : f32 = u_xlat81;
    u_xlati81 = i32(x_2091);
    let x_2093 : vec3<f32> = vs_TEXCOORD7;
    let x_2104 : i32 = u_xlati81;
    let x_2106 : vec4<f32> = x_2103.x_AdditionalLightsPosition[x_2104];
    let x_2109 : i32 = u_xlati81;
    let x_2111 : vec4<f32> = x_2103.x_AdditionalLightsPosition[x_2109];
    let x_2113 : vec3<f32> = ((-(x_2093) * vec3<f32>(x_2106.w, x_2106.w, x_2106.w)) + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
    let x_2114 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
    let x_2117 : vec4<f32> = u_xlat8;
    let x_2119 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.z), vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
    let x_2122 : f32 = u_xlat83;
    u_xlat83 = max(x_2122, 0.00006103515625f);
    let x_2125 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2125);
    let x_2129 : vec4<f32> = u_xlat8;
    let x_2131 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * vec3<f32>(x_2131.x, x_2131.x, x_2131.x));
    let x_2134 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2134);
    let x_2137 : f32 = u_xlat83;
    let x_2138 : i32 = u_xlati81;
    let x_2140 : f32 = x_2103.x_AdditionalLightsAttenuation[x_2138].x;
    u_xlat83 = (x_2137 * x_2140);
    let x_2142 : f32 = u_xlat83;
    let x_2144 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2142) * x_2144) + 1.0f);
    let x_2147 : f32 = u_xlat83;
    u_xlat83 = max(x_2147, 0.0f);
    let x_2149 : f32 = u_xlat83;
    let x_2150 : f32 = u_xlat83;
    u_xlat83 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat83;
    let x_2154 : f32 = u_xlat10.x;
    u_xlat83 = (x_2152 * x_2154);
    let x_2156 : i32 = u_xlati81;
    let x_2158 : vec4<f32> = x_2103.x_AdditionalLightsSpotDir[x_2156];
    let x_2160 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2158.x, x_2158.y, x_2158.z), x_2160);
    let x_2164 : f32 = u_xlat10.x;
    let x_2165 : i32 = u_xlati81;
    let x_2167 : f32 = x_2103.x_AdditionalLightsAttenuation[x_2165].z;
    let x_2169 : i32 = u_xlati81;
    let x_2171 : f32 = x_2103.x_AdditionalLightsAttenuation[x_2169].w;
    u_xlat10.x = ((x_2164 * x_2167) + x_2171);
    let x_2175 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2175, 0.0f, 1.0f);
    let x_2179 : f32 = u_xlat10.x;
    let x_2181 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2179 * x_2181);
    let x_2184 : f32 = u_xlat83;
    let x_2186 : f32 = u_xlat10.x;
    u_xlat83 = (x_2184 * x_2186);
    let x_2190 : i32 = u_xlati81;
    let x_2192 : f32 = x_152.x_AdditionalShadowParams[x_2190].w;
    u_xlati10 = i32(x_2192);
    let x_2197 : i32 = u_xlati10;
    u_xlatb35.x = (x_2197 >= 0i);
    let x_2201 : bool = u_xlatb35.x;
    if (x_2201) {
      let x_2205 : i32 = u_xlati81;
      let x_2207 : f32 = x_152.x_AdditionalShadowParams[x_2205].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2207, x_2207, x_2207, x_2207))));
      let x_2213 : bool = u_xlatb35.x;
      if (x_2213) {
        let x_2216 : vec3<f32> = u_xlat34;
        let x_2219 : vec3<f32> = u_xlat34;
        let x_2222 : vec4<bool> = (abs(vec4<f32>(x_2216.z, x_2216.z, x_2216.y, x_2216.y)) >= abs(vec4<f32>(x_2219.x, x_2219.y, x_2219.x, x_2219.x)));
        u_xlatb35 = vec3<bool>(x_2222.x, x_2222.y, x_2222.z);
        let x_2225 : bool = u_xlatb35.y;
        let x_2227 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2225 & x_2227);
        let x_2231 : vec3<f32> = u_xlat34;
        let x_2234 : vec4<bool> = (-(vec4<f32>(x_2231.z, x_2231.y, x_2231.x, x_2231.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2234.x, x_2234.y, x_2234.z);
        let x_2237 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2237);
        let x_2242 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2242);
        let x_2246 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2246);
        let x_2250 : bool = u_xlatb35.z;
        if (x_2250) {
          let x_2255 : f32 = u_xlat11.y;
          x_2251 = x_2255;
        } else {
          let x_2258 : f32 = u_xlat60.x;
          x_2251 = x_2258;
        }
        let x_2259 : f32 = x_2251;
        u_xlat60.x = x_2259;
        let x_2263 : bool = u_xlatb35.x;
        if (x_2263) {
          let x_2268 : f32 = u_xlat11.x;
          x_2264 = x_2268;
        } else {
          let x_2271 : f32 = u_xlat60.x;
          x_2264 = x_2271;
        }
        let x_2272 : f32 = x_2264;
        u_xlat35 = x_2272;
        let x_2273 : i32 = u_xlati81;
        let x_2275 : f32 = x_152.x_AdditionalShadowParams[x_2273].w;
        u_xlat60.x = trunc(x_2275);
        let x_2278 : f32 = u_xlat35;
        let x_2280 : f32 = u_xlat60.x;
        u_xlat35 = (x_2278 + x_2280);
        let x_2282 : f32 = u_xlat35;
        u_xlati10 = i32(x_2282);
      }
      let x_2284 : i32 = u_xlati10;
      u_xlati10 = (x_2284 << bitcast<u32>(2i));
      let x_2286 : vec3<f32> = vs_TEXCOORD7;
      let x_2289 : i32 = u_xlati10;
      let x_2292 : i32 = u_xlati10;
      let x_2296 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2289 + 1i) / 4i)][((x_2292 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2286.y, x_2286.y, x_2286.y, x_2286.y) * x_2296);
      let x_2298 : i32 = u_xlati10;
      let x_2300 : i32 = u_xlati10;
      let x_2303 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_2298 / 4i)][(x_2300 % 4i)];
      let x_2304 : vec3<f32> = vs_TEXCOORD7;
      let x_2307 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2303 * vec4<f32>(x_2304.x, x_2304.x, x_2304.x, x_2304.x)) + x_2307);
      let x_2309 : i32 = u_xlati10;
      let x_2312 : i32 = u_xlati10;
      let x_2316 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2309 + 2i) / 4i)][((x_2312 + 2i) % 4i)];
      let x_2317 : vec3<f32> = vs_TEXCOORD7;
      let x_2320 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2316 * vec4<f32>(x_2317.z, x_2317.z, x_2317.z, x_2317.z)) + x_2320);
      let x_2322 : vec4<f32> = u_xlat11;
      let x_2323 : i32 = u_xlati10;
      let x_2326 : i32 = u_xlati10;
      let x_2330 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_2323 + 3i) / 4i)][((x_2326 + 3i) % 4i)];
      u_xlat10 = (x_2322 + x_2330);
      let x_2332 : vec4<f32> = u_xlat10;
      let x_2334 : vec4<f32> = u_xlat10;
      let x_2336 : vec3<f32> = (vec3<f32>(x_2332.x, x_2332.y, x_2332.z) / vec3<f32>(x_2334.w, x_2334.w, x_2334.w));
      let x_2337 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
      let x_2340 : i32 = u_xlati81;
      let x_2342 : f32 = x_152.x_AdditionalShadowParams[x_2340].y;
      u_xlatb85 = (0.0f < x_2342);
      let x_2344 : bool = u_xlatb85;
      if (x_2344) {
        let x_2347 : i32 = u_xlati81;
        let x_2349 : f32 = x_152.x_AdditionalShadowParams[x_2347].y;
        u_xlatb85 = (1.0f == x_2349);
        let x_2351 : bool = u_xlatb85;
        if (x_2351) {
          let x_2354 : vec4<f32> = u_xlat10;
          let x_2358 : vec4<f32> = x_152.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) + x_2358);
          let x_2361 : vec4<f32> = u_xlat11;
          let x_2362 : vec2<f32> = vec2<f32>(x_2361.x, x_2361.y);
          let x_2364 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
          let x_2372 : vec3<f32> = txVec30;
          let x_2374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2372.xy, x_2372.z);
          u_xlat12.x = x_2374;
          let x_2377 : vec4<f32> = u_xlat11;
          let x_2378 : vec2<f32> = vec2<f32>(x_2377.z, x_2377.w);
          let x_2380 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
          let x_2387 : vec3<f32> = txVec31;
          let x_2389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
          u_xlat12.y = x_2389;
          let x_2391 : vec4<f32> = u_xlat10;
          let x_2395 : vec4<f32> = x_152.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2391.x, x_2391.y, x_2391.x, x_2391.y) + x_2395);
          let x_2398 : vec4<f32> = u_xlat11;
          let x_2399 : vec2<f32> = vec2<f32>(x_2398.x, x_2398.y);
          let x_2401 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2399.x, x_2399.y, x_2401);
          let x_2408 : vec3<f32> = txVec32;
          let x_2410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2408.xy, x_2408.z);
          u_xlat12.z = x_2410;
          let x_2413 : vec4<f32> = u_xlat11;
          let x_2414 : vec2<f32> = vec2<f32>(x_2413.z, x_2413.w);
          let x_2416 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2414.x, x_2414.y, x_2416);
          let x_2423 : vec3<f32> = txVec33;
          let x_2425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2423.xy, x_2423.z);
          u_xlat12.w = x_2425;
          let x_2428 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2428, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2431 : i32 = u_xlati81;
          let x_2433 : f32 = x_152.x_AdditionalShadowParams[x_2431].y;
          u_xlatb11.x = (2.0f == x_2433);
          let x_2437 : bool = u_xlatb11.x;
          if (x_2437) {
            let x_2440 : vec4<f32> = u_xlat10;
            let x_2444 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2447 : vec2<f32> = ((vec2<f32>(x_2440.x, x_2440.y) * vec2<f32>(x_2444.z, x_2444.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2448 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat11;
            let x_2452 : vec2<f32> = floor(vec2<f32>(x_2450.x, x_2450.y));
            let x_2453 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2452.x, x_2452.y, x_2453.z, x_2453.w);
            let x_2456 : vec4<f32> = u_xlat10;
            let x_2459 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2462 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2456.x, x_2456.y) * vec2<f32>(x_2459.z, x_2459.w)) + -(vec2<f32>(x_2462.x, x_2462.y)));
            let x_2466 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2466.x, x_2466.x, x_2466.y, x_2466.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2469 : vec4<f32> = u_xlat12;
            let x_2471 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2469.x, x_2469.x, x_2469.z, x_2469.z) * vec4<f32>(x_2471.x, x_2471.x, x_2471.z, x_2471.z));
            let x_2474 : vec4<f32> = u_xlat13;
            let x_2476 : vec2<f32> = (vec2<f32>(x_2474.y, x_2474.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2477 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2476.x, x_2477.y, x_2476.y, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat13;
            let x_2482 : vec2<f32> = u_xlat61;
            let x_2484 : vec2<f32> = ((vec2<f32>(x_2479.x, x_2479.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2482));
            let x_2485 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
            let x_2487 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2487) + vec2<f32>(1.0f, 1.0f));
            let x_2490 : vec2<f32> = u_xlat61;
            let x_2491 : vec2<f32> = min(x_2490, vec2<f32>(0.0f, 0.0f));
            let x_2492 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2491.x, x_2491.y, x_2492.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat14;
            let x_2497 : vec4<f32> = u_xlat14;
            let x_2500 : vec2<f32> = u_xlat63;
            let x_2501 : vec2<f32> = ((-(vec2<f32>(x_2494.x, x_2494.y)) * vec2<f32>(x_2497.x, x_2497.y)) + x_2500);
            let x_2502 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
            let x_2504 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2504, vec2<f32>(0.0f, 0.0f));
            let x_2506 : vec2<f32> = u_xlat61;
            let x_2508 : vec2<f32> = u_xlat61;
            let x_2510 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2506) * x_2508) + vec2<f32>(x_2510.y, x_2510.w));
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2515 : vec2<f32> = (vec2<f32>(x_2513.x, x_2513.y) + vec2<f32>(1.0f, 1.0f));
            let x_2516 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2515.x, x_2515.y, x_2516.z, x_2516.w);
            let x_2518 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2518 + vec2<f32>(1.0f, 1.0f));
            let x_2520 : vec4<f32> = u_xlat13;
            let x_2522 : vec2<f32> = (vec2<f32>(x_2520.x, x_2520.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2523 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2522.x, x_2522.y, x_2523.z, x_2523.w);
            let x_2525 : vec2<f32> = u_xlat63;
            let x_2526 : vec2<f32> = (x_2525 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2527 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2526.x, x_2526.y, x_2527.z, x_2527.w);
            let x_2529 : vec4<f32> = u_xlat14;
            let x_2531 : vec2<f32> = (vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2532 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2531.x, x_2531.y, x_2532.z, x_2532.w);
            let x_2534 : vec2<f32> = u_xlat61;
            let x_2535 : vec2<f32> = (x_2534 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2536 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2535.x, x_2535.y, x_2536.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2538.y, x_2538.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2542 : f32 = u_xlat14.x;
            u_xlat15.z = x_2542;
            let x_2545 : f32 = u_xlat61.x;
            u_xlat15.w = x_2545;
            let x_2548 : f32 = u_xlat16.x;
            u_xlat13.z = x_2548;
            let x_2551 : f32 = u_xlat12.x;
            u_xlat13.w = x_2551;
            let x_2553 : vec4<f32> = u_xlat13;
            let x_2555 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2553.z, x_2553.w, x_2553.x, x_2553.z) + vec4<f32>(x_2555.z, x_2555.w, x_2555.x, x_2555.z));
            let x_2559 : f32 = u_xlat15.y;
            u_xlat14.z = x_2559;
            let x_2562 : f32 = u_xlat61.y;
            u_xlat14.w = x_2562;
            let x_2565 : f32 = u_xlat13.y;
            u_xlat16.z = x_2565;
            let x_2568 : f32 = u_xlat12.z;
            u_xlat16.w = x_2568;
            let x_2570 : vec4<f32> = u_xlat14;
            let x_2572 : vec4<f32> = u_xlat16;
            let x_2574 : vec3<f32> = (vec3<f32>(x_2570.z, x_2570.y, x_2570.w) + vec3<f32>(x_2572.z, x_2572.y, x_2572.w));
            let x_2575 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
            let x_2577 : vec4<f32> = u_xlat13;
            let x_2579 : vec4<f32> = u_xlat17;
            let x_2581 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.z, x_2577.w) / vec3<f32>(x_2579.z, x_2579.w, x_2579.y));
            let x_2582 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
            let x_2584 : vec4<f32> = u_xlat13;
            let x_2586 : vec3<f32> = (vec3<f32>(x_2584.x, x_2584.y, x_2584.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2587 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat16;
            let x_2591 : vec4<f32> = u_xlat12;
            let x_2593 : vec3<f32> = (vec3<f32>(x_2589.z, x_2589.y, x_2589.w) / vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
            let x_2594 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat14;
            let x_2598 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.y, x_2596.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2599 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat13;
            let x_2604 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2606 : vec3<f32> = (vec3<f32>(x_2601.y, x_2601.x, x_2601.z) * vec3<f32>(x_2604.x, x_2604.x, x_2604.x));
            let x_2607 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
            let x_2609 : vec4<f32> = u_xlat14;
            let x_2612 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2614 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) * vec3<f32>(x_2612.y, x_2612.y, x_2612.y));
            let x_2615 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
            let x_2618 : f32 = u_xlat14.x;
            u_xlat13.w = x_2618;
            let x_2620 : vec4<f32> = u_xlat11;
            let x_2623 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2626 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y) * vec4<f32>(x_2623.x, x_2623.y, x_2623.x, x_2623.y)) + vec4<f32>(x_2626.y, x_2626.w, x_2626.x, x_2626.w));
            let x_2629 : vec4<f32> = u_xlat11;
            let x_2632 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2635 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(x_2632.x, x_2632.y)) + vec2<f32>(x_2635.z, x_2635.w));
            let x_2639 : f32 = u_xlat13.y;
            u_xlat14.w = x_2639;
            let x_2641 : vec4<f32> = u_xlat14;
            let x_2642 : vec2<f32> = vec2<f32>(x_2641.y, x_2641.z);
            let x_2643 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2643.x, x_2642.x, x_2643.z, x_2642.y);
            let x_2645 : vec4<f32> = u_xlat11;
            let x_2648 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2651 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2645.x, x_2645.y, x_2645.x, x_2645.y) * vec4<f32>(x_2648.x, x_2648.y, x_2648.x, x_2648.y)) + vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2651.y));
            let x_2654 : vec4<f32> = u_xlat11;
            let x_2657 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2660 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2654.x, x_2654.y, x_2654.x, x_2654.y) * vec4<f32>(x_2657.x, x_2657.y, x_2657.x, x_2657.y)) + vec4<f32>(x_2660.w, x_2660.y, x_2660.w, x_2660.z));
            let x_2663 : vec4<f32> = u_xlat11;
            let x_2666 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2669 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y) * vec4<f32>(x_2666.x, x_2666.y, x_2666.x, x_2666.y)) + vec4<f32>(x_2669.x, x_2669.w, x_2669.z, x_2669.w));
            let x_2672 : vec4<f32> = u_xlat12;
            let x_2674 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2672.x, x_2672.x, x_2672.x, x_2672.y) * vec4<f32>(x_2674.z, x_2674.w, x_2674.y, x_2674.z));
            let x_2677 : vec4<f32> = u_xlat12;
            let x_2679 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2677.y, x_2677.y, x_2677.z, x_2677.z) * x_2679);
            let x_2682 : f32 = u_xlat12.z;
            let x_2684 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2682 * x_2684);
            let x_2688 : vec4<f32> = u_xlat15;
            let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
            let x_2691 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
            let x_2699 : vec3<f32> = txVec34;
            let x_2701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2699.xy, x_2699.z);
            u_xlat36 = x_2701;
            let x_2703 : vec4<f32> = u_xlat15;
            let x_2704 : vec2<f32> = vec2<f32>(x_2703.z, x_2703.w);
            let x_2706 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2704.x, x_2704.y, x_2706);
            let x_2713 : vec3<f32> = txVec35;
            let x_2715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2713.xy, x_2713.z);
            u_xlat12.x = x_2715;
            let x_2718 : f32 = u_xlat12.x;
            let x_2720 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2718 * x_2720);
            let x_2724 : f32 = u_xlat18.x;
            let x_2725 : f32 = u_xlat36;
            let x_2728 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2724 * x_2725) + x_2728);
            let x_2731 : vec2<f32> = u_xlat61;
            let x_2733 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2731.x, x_2731.y, x_2733);
            let x_2740 : vec3<f32> = txVec36;
            let x_2742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2740.xy, x_2740.z);
            u_xlat61.x = x_2742;
            let x_2745 : f32 = u_xlat18.z;
            let x_2747 : f32 = u_xlat61.x;
            let x_2749 : f32 = u_xlat36;
            u_xlat36 = ((x_2745 * x_2747) + x_2749);
            let x_2752 : vec4<f32> = u_xlat14;
            let x_2753 : vec2<f32> = vec2<f32>(x_2752.x, x_2752.y);
            let x_2755 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
            let x_2762 : vec3<f32> = txVec37;
            let x_2764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
            u_xlat61.x = x_2764;
            let x_2767 : f32 = u_xlat18.w;
            let x_2769 : f32 = u_xlat61.x;
            let x_2771 : f32 = u_xlat36;
            u_xlat36 = ((x_2767 * x_2769) + x_2771);
            let x_2774 : vec4<f32> = u_xlat16;
            let x_2775 : vec2<f32> = vec2<f32>(x_2774.x, x_2774.y);
            let x_2777 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2775.x, x_2775.y, x_2777);
            let x_2784 : vec3<f32> = txVec38;
            let x_2786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2784.xy, x_2784.z);
            u_xlat61.x = x_2786;
            let x_2789 : f32 = u_xlat19.x;
            let x_2791 : f32 = u_xlat61.x;
            let x_2793 : f32 = u_xlat36;
            u_xlat36 = ((x_2789 * x_2791) + x_2793);
            let x_2796 : vec4<f32> = u_xlat16;
            let x_2797 : vec2<f32> = vec2<f32>(x_2796.z, x_2796.w);
            let x_2799 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2797.x, x_2797.y, x_2799);
            let x_2806 : vec3<f32> = txVec39;
            let x_2808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2806.xy, x_2806.z);
            u_xlat61.x = x_2808;
            let x_2811 : f32 = u_xlat19.y;
            let x_2813 : f32 = u_xlat61.x;
            let x_2815 : f32 = u_xlat36;
            u_xlat36 = ((x_2811 * x_2813) + x_2815);
            let x_2818 : vec4<f32> = u_xlat14;
            let x_2819 : vec2<f32> = vec2<f32>(x_2818.z, x_2818.w);
            let x_2821 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
            let x_2828 : vec3<f32> = txVec40;
            let x_2830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
            u_xlat61.x = x_2830;
            let x_2833 : f32 = u_xlat19.z;
            let x_2835 : f32 = u_xlat61.x;
            let x_2837 : f32 = u_xlat36;
            u_xlat36 = ((x_2833 * x_2835) + x_2837);
            let x_2840 : vec4<f32> = u_xlat13;
            let x_2841 : vec2<f32> = vec2<f32>(x_2840.x, x_2840.y);
            let x_2843 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2841.x, x_2841.y, x_2843);
            let x_2850 : vec3<f32> = txVec41;
            let x_2852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2850.xy, x_2850.z);
            u_xlat61.x = x_2852;
            let x_2855 : f32 = u_xlat19.w;
            let x_2857 : f32 = u_xlat61.x;
            let x_2859 : f32 = u_xlat36;
            u_xlat36 = ((x_2855 * x_2857) + x_2859);
            let x_2862 : vec4<f32> = u_xlat13;
            let x_2863 : vec2<f32> = vec2<f32>(x_2862.z, x_2862.w);
            let x_2865 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
            let x_2872 : vec3<f32> = txVec42;
            let x_2874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2872.xy, x_2872.z);
            u_xlat61.x = x_2874;
            let x_2877 : f32 = u_xlat11.x;
            let x_2879 : f32 = u_xlat61.x;
            let x_2881 : f32 = u_xlat36;
            u_xlat85 = ((x_2877 * x_2879) + x_2881);
          } else {
            let x_2884 : vec4<f32> = u_xlat10;
            let x_2887 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2890 : vec2<f32> = ((vec2<f32>(x_2884.x, x_2884.y) * vec2<f32>(x_2887.z, x_2887.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2891 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec4<f32> = u_xlat11;
            let x_2895 : vec2<f32> = floor(vec2<f32>(x_2893.x, x_2893.y));
            let x_2896 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec4<f32> = u_xlat10;
            let x_2901 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_2904 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(x_2901.z, x_2901.w)) + -(vec2<f32>(x_2904.x, x_2904.y)));
            let x_2908 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2908.x, x_2908.x, x_2908.y, x_2908.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2911 : vec4<f32> = u_xlat12;
            let x_2913 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2911.x, x_2911.x, x_2911.z, x_2911.z) * vec4<f32>(x_2913.x, x_2913.x, x_2913.z, x_2913.z));
            let x_2916 : vec4<f32> = u_xlat13;
            let x_2918 : vec2<f32> = (vec2<f32>(x_2916.y, x_2916.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2919 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2919.x, x_2918.x, x_2919.z, x_2918.y);
            let x_2921 : vec4<f32> = u_xlat13;
            let x_2924 : vec2<f32> = u_xlat61;
            let x_2926 : vec2<f32> = ((vec2<f32>(x_2921.x, x_2921.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2924));
            let x_2927 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2926.x, x_2927.y, x_2926.y, x_2927.w);
            let x_2929 : vec2<f32> = u_xlat61;
            let x_2931 : vec2<f32> = (-(x_2929) + vec2<f32>(1.0f, 1.0f));
            let x_2932 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2931.x, x_2931.y, x_2932.z, x_2932.w);
            let x_2934 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2934, vec2<f32>(0.0f, 0.0f));
            let x_2936 : vec2<f32> = u_xlat63;
            let x_2938 : vec2<f32> = u_xlat63;
            let x_2940 : vec4<f32> = u_xlat13;
            let x_2942 : vec2<f32> = ((-(x_2936) * x_2938) + vec2<f32>(x_2940.x, x_2940.y));
            let x_2943 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
            let x_2945 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2945, vec2<f32>(0.0f, 0.0f));
            let x_2948 : vec2<f32> = u_xlat63;
            let x_2950 : vec2<f32> = u_xlat63;
            let x_2952 : vec4<f32> = u_xlat12;
            let x_2954 : vec2<f32> = ((-(x_2948) * x_2950) + vec2<f32>(x_2952.y, x_2952.w));
            let x_2955 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2954.x, x_2955.y, x_2954.y);
            let x_2957 : vec4<f32> = u_xlat13;
            let x_2960 : vec2<f32> = (vec2<f32>(x_2957.x, x_2957.y) + vec2<f32>(2.0f, 2.0f));
            let x_2961 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2960.x, x_2960.y, x_2961.z, x_2961.w);
            let x_2963 : vec3<f32> = u_xlat37;
            let x_2965 : vec2<f32> = (vec2<f32>(x_2963.x, x_2963.z) + vec2<f32>(2.0f, 2.0f));
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2966.x, x_2965.x, x_2966.z, x_2965.y);
            let x_2969 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2969 * 0.08163200318813323975f);
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2975 : vec3<f32> = (vec3<f32>(x_2972.z, x_2972.x, x_2972.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2976 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2975.x, x_2975.y, x_2975.z, x_2976.w);
            let x_2978 : vec4<f32> = u_xlat13;
            let x_2980 : vec2<f32> = (vec2<f32>(x_2978.x, x_2978.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2981 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2984 : f32 = u_xlat16.y;
            u_xlat15.x = x_2984;
            let x_2986 : vec2<f32> = u_xlat61;
            let x_2989 : vec2<f32> = ((vec2<f32>(x_2986.x, x_2986.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2990 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2990.x, x_2989.x, x_2990.z, x_2989.y);
            let x_2992 : vec2<f32> = u_xlat61;
            let x_2995 : vec2<f32> = ((vec2<f32>(x_2992.x, x_2992.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2995.x, x_2996.y, x_2995.y, x_2996.w);
            let x_2999 : f32 = u_xlat12.x;
            u_xlat13.y = x_2999;
            let x_3002 : f32 = u_xlat14.y;
            u_xlat13.w = x_3002;
            let x_3004 : vec4<f32> = u_xlat13;
            let x_3005 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3004 + x_3005);
            let x_3007 : vec2<f32> = u_xlat61;
            let x_3010 : vec2<f32> = ((vec2<f32>(x_3007.y, x_3007.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3011 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3011.x, x_3010.x, x_3011.z, x_3010.y);
            let x_3013 : vec2<f32> = u_xlat61;
            let x_3016 : vec2<f32> = ((vec2<f32>(x_3013.y, x_3013.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3016.x, x_3017.y, x_3016.y, x_3017.w);
            let x_3020 : f32 = u_xlat12.y;
            u_xlat14.y = x_3020;
            let x_3022 : vec4<f32> = u_xlat14;
            let x_3023 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3022 + x_3023);
            let x_3025 : vec4<f32> = u_xlat13;
            let x_3026 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3025 / x_3026);
            let x_3028 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3028 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3030 : vec4<f32> = u_xlat14;
            let x_3031 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3030 / x_3031);
            let x_3033 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3033 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3035 : vec4<f32> = u_xlat13;
            let x_3038 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3035.w, x_3035.x, x_3035.y, x_3035.z) * vec4<f32>(x_3038.x, x_3038.x, x_3038.x, x_3038.x));
            let x_3041 : vec4<f32> = u_xlat14;
            let x_3044 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3041.x, x_3041.w, x_3041.y, x_3041.z) * vec4<f32>(x_3044.y, x_3044.y, x_3044.y, x_3044.y));
            let x_3047 : vec4<f32> = u_xlat13;
            let x_3048 : vec3<f32> = vec3<f32>(x_3047.y, x_3047.z, x_3047.w);
            let x_3049 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3048.x, x_3049.y, x_3048.y, x_3048.z);
            let x_3052 : f32 = u_xlat14.x;
            u_xlat16.y = x_3052;
            let x_3054 : vec4<f32> = u_xlat11;
            let x_3057 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3060 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y) * vec4<f32>(x_3057.x, x_3057.y, x_3057.x, x_3057.y)) + vec4<f32>(x_3060.x, x_3060.y, x_3060.z, x_3060.y));
            let x_3063 : vec4<f32> = u_xlat11;
            let x_3066 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3069 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3063.x, x_3063.y) * vec2<f32>(x_3066.x, x_3066.y)) + vec2<f32>(x_3069.w, x_3069.y));
            let x_3073 : f32 = u_xlat16.y;
            u_xlat13.y = x_3073;
            let x_3076 : f32 = u_xlat14.z;
            u_xlat16.y = x_3076;
            let x_3078 : vec4<f32> = u_xlat11;
            let x_3081 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y) * vec4<f32>(x_3081.x, x_3081.y, x_3081.x, x_3081.y)) + vec4<f32>(x_3084.x, x_3084.y, x_3084.z, x_3084.y));
            let x_3087 : vec4<f32> = u_xlat11;
            let x_3090 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3093 : vec4<f32> = u_xlat16;
            let x_3095 : vec2<f32> = ((vec2<f32>(x_3087.x, x_3087.y) * vec2<f32>(x_3090.x, x_3090.y)) + vec2<f32>(x_3093.w, x_3093.y));
            let x_3096 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3095.x, x_3095.y, x_3096.z, x_3096.w);
            let x_3099 : f32 = u_xlat16.y;
            u_xlat13.z = x_3099;
            let x_3101 : vec4<f32> = u_xlat11;
            let x_3104 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3107 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3101.x, x_3101.y, x_3101.x, x_3101.y) * vec4<f32>(x_3104.x, x_3104.y, x_3104.x, x_3104.y)) + vec4<f32>(x_3107.x, x_3107.y, x_3107.x, x_3107.z));
            let x_3111 : f32 = u_xlat14.w;
            u_xlat16.y = x_3111;
            let x_3114 : vec4<f32> = u_xlat11;
            let x_3117 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3120 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3114.x, x_3114.y, x_3114.x, x_3114.y) * vec4<f32>(x_3117.x, x_3117.y, x_3117.x, x_3117.y)) + vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3120.y));
            let x_3124 : vec4<f32> = u_xlat11;
            let x_3127 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(x_3127.x, x_3127.y)) + vec2<f32>(x_3130.w, x_3130.y));
            let x_3134 : f32 = u_xlat16.y;
            u_xlat13.w = x_3134;
            let x_3137 : vec4<f32> = u_xlat11;
            let x_3140 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3143 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3137.x, x_3137.y) * vec2<f32>(x_3140.x, x_3140.y)) + vec2<f32>(x_3143.x, x_3143.w));
            let x_3146 : vec4<f32> = u_xlat16;
            let x_3147 : vec3<f32> = vec3<f32>(x_3146.x, x_3146.z, x_3146.w);
            let x_3148 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3147.x, x_3148.y, x_3147.y, x_3147.z);
            let x_3150 : vec4<f32> = u_xlat11;
            let x_3153 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y) * vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y)) + vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3156.y));
            let x_3160 : vec4<f32> = u_xlat11;
            let x_3163 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3166 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3160.x, x_3160.y) * vec2<f32>(x_3163.x, x_3163.y)) + vec2<f32>(x_3166.w, x_3166.y));
            let x_3170 : f32 = u_xlat13.x;
            u_xlat14.x = x_3170;
            let x_3172 : vec4<f32> = u_xlat11;
            let x_3175 : vec4<f32> = x_152.x_AdditionalShadowmapSize;
            let x_3178 : vec4<f32> = u_xlat14;
            let x_3180 : vec2<f32> = ((vec2<f32>(x_3172.x, x_3172.y) * vec2<f32>(x_3175.x, x_3175.y)) + vec2<f32>(x_3178.x, x_3178.y));
            let x_3181 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3180.x, x_3180.y, x_3181.z, x_3181.w);
            let x_3184 : vec4<f32> = u_xlat12;
            let x_3186 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3184.x, x_3184.x, x_3184.x, x_3184.x) * x_3186);
            let x_3189 : vec4<f32> = u_xlat12;
            let x_3191 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3189.y, x_3189.y, x_3189.y, x_3189.y) * x_3191);
            let x_3194 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3194.z, x_3194.z, x_3194.z, x_3194.z) * x_3196);
            let x_3198 : vec4<f32> = u_xlat12;
            let x_3200 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3198.w, x_3198.w, x_3198.w, x_3198.w) * x_3200);
            let x_3203 : vec4<f32> = u_xlat17;
            let x_3204 : vec2<f32> = vec2<f32>(x_3203.x, x_3203.y);
            let x_3206 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
            let x_3213 : vec3<f32> = txVec43;
            let x_3215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
            u_xlat13.x = x_3215;
            let x_3218 : vec4<f32> = u_xlat17;
            let x_3219 : vec2<f32> = vec2<f32>(x_3218.z, x_3218.w);
            let x_3221 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3229 : vec3<f32> = txVec44;
            let x_3231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3229.xy, x_3229.z);
            u_xlat88 = x_3231;
            let x_3232 : f32 = u_xlat88;
            let x_3234 : f32 = u_xlat22.y;
            u_xlat88 = (x_3232 * x_3234);
            let x_3237 : f32 = u_xlat22.x;
            let x_3239 : f32 = u_xlat13.x;
            let x_3241 : f32 = u_xlat88;
            u_xlat13.x = ((x_3237 * x_3239) + x_3241);
            let x_3245 : vec2<f32> = u_xlat61;
            let x_3247 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3254 : vec3<f32> = txVec45;
            let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
            u_xlat61.x = x_3256;
            let x_3259 : f32 = u_xlat22.z;
            let x_3261 : f32 = u_xlat61.x;
            let x_3264 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3259 * x_3261) + x_3264);
            let x_3268 : vec4<f32> = u_xlat20;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.x, x_3268.y);
            let x_3271 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3279 : vec3<f32> = txVec46;
            let x_3281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
            u_xlat86 = x_3281;
            let x_3283 : f32 = u_xlat22.w;
            let x_3284 : f32 = u_xlat86;
            let x_3287 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3283 * x_3284) + x_3287);
            let x_3291 : vec4<f32> = u_xlat18;
            let x_3292 : vec2<f32> = vec2<f32>(x_3291.x, x_3291.y);
            let x_3294 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec47;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat86 = x_3303;
            let x_3305 : f32 = u_xlat23.x;
            let x_3306 : f32 = u_xlat86;
            let x_3309 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3305 * x_3306) + x_3309);
            let x_3313 : vec4<f32> = u_xlat18;
            let x_3314 : vec2<f32> = vec2<f32>(x_3313.z, x_3313.w);
            let x_3316 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3314.x, x_3314.y, x_3316);
            let x_3323 : vec3<f32> = txVec48;
            let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
            u_xlat86 = x_3325;
            let x_3327 : f32 = u_xlat23.y;
            let x_3328 : f32 = u_xlat86;
            let x_3331 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3327 * x_3328) + x_3331);
            let x_3335 : vec4<f32> = u_xlat19;
            let x_3336 : vec2<f32> = vec2<f32>(x_3335.x, x_3335.y);
            let x_3338 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3336.x, x_3336.y, x_3338);
            let x_3345 : vec3<f32> = txVec49;
            let x_3347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3345.xy, x_3345.z);
            u_xlat86 = x_3347;
            let x_3349 : f32 = u_xlat23.z;
            let x_3350 : f32 = u_xlat86;
            let x_3353 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3349 * x_3350) + x_3353);
            let x_3357 : vec4<f32> = u_xlat20;
            let x_3358 : vec2<f32> = vec2<f32>(x_3357.z, x_3357.w);
            let x_3360 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec50;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat86 = x_3369;
            let x_3371 : f32 = u_xlat23.w;
            let x_3372 : f32 = u_xlat86;
            let x_3375 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3371 * x_3372) + x_3375);
            let x_3379 : vec4<f32> = u_xlat21;
            let x_3380 : vec2<f32> = vec2<f32>(x_3379.x, x_3379.y);
            let x_3382 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec51;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat86 = x_3391;
            let x_3393 : f32 = u_xlat24.x;
            let x_3394 : f32 = u_xlat86;
            let x_3397 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3393 * x_3394) + x_3397);
            let x_3401 : vec4<f32> = u_xlat21;
            let x_3402 : vec2<f32> = vec2<f32>(x_3401.z, x_3401.w);
            let x_3404 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
            let x_3411 : vec3<f32> = txVec52;
            let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
            u_xlat86 = x_3413;
            let x_3415 : f32 = u_xlat24.y;
            let x_3416 : f32 = u_xlat86;
            let x_3419 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3415 * x_3416) + x_3419);
            let x_3423 : vec2<f32> = u_xlat38;
            let x_3425 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec53;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat86 = x_3434;
            let x_3436 : f32 = u_xlat24.z;
            let x_3437 : f32 = u_xlat86;
            let x_3440 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3436 * x_3437) + x_3440);
            let x_3444 : vec2<f32> = u_xlat69;
            let x_3446 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec54;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat86 = x_3455;
            let x_3457 : f32 = u_xlat24.w;
            let x_3458 : f32 = u_xlat86;
            let x_3461 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3457 * x_3458) + x_3461);
            let x_3465 : vec4<f32> = u_xlat16;
            let x_3466 : vec2<f32> = vec2<f32>(x_3465.x, x_3465.y);
            let x_3468 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec55;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat86 = x_3477;
            let x_3479 : f32 = u_xlat12.x;
            let x_3480 : f32 = u_xlat86;
            let x_3483 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3479 * x_3480) + x_3483);
            let x_3487 : vec4<f32> = u_xlat16;
            let x_3488 : vec2<f32> = vec2<f32>(x_3487.z, x_3487.w);
            let x_3490 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3488.x, x_3488.y, x_3490);
            let x_3497 : vec3<f32> = txVec56;
            let x_3499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3497.xy, x_3497.z);
            u_xlat86 = x_3499;
            let x_3501 : f32 = u_xlat12.y;
            let x_3502 : f32 = u_xlat86;
            let x_3505 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3501 * x_3502) + x_3505);
            let x_3509 : vec2<f32> = u_xlat64;
            let x_3511 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3509.x, x_3509.y, x_3511);
            let x_3518 : vec3<f32> = txVec57;
            let x_3520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3518.xy, x_3518.z);
            u_xlat86 = x_3520;
            let x_3522 : f32 = u_xlat12.z;
            let x_3523 : f32 = u_xlat86;
            let x_3526 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3522 * x_3523) + x_3526);
            let x_3530 : vec4<f32> = u_xlat11;
            let x_3531 : vec2<f32> = vec2<f32>(x_3530.x, x_3530.y);
            let x_3533 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
            let x_3540 : vec3<f32> = txVec58;
            let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
            u_xlat11.x = x_3542;
            let x_3545 : f32 = u_xlat12.w;
            let x_3547 : f32 = u_xlat11.x;
            let x_3550 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3545 * x_3547) + x_3550);
          }
        }
      } else {
        let x_3554 : vec4<f32> = u_xlat10;
        let x_3555 : vec2<f32> = vec2<f32>(x_3554.x, x_3554.y);
        let x_3557 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
        let x_3564 : vec3<f32> = txVec59;
        let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
        u_xlat85 = x_3566;
      }
      let x_3567 : i32 = u_xlati81;
      let x_3569 : f32 = x_152.x_AdditionalShadowParams[x_3567].x;
      u_xlat10.x = (1.0f + -(x_3569));
      let x_3573 : f32 = u_xlat85;
      let x_3574 : i32 = u_xlati81;
      let x_3576 : f32 = x_152.x_AdditionalShadowParams[x_3574].x;
      let x_3579 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3573 * x_3576) + x_3579);
      let x_3583 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3583);
      let x_3588 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3588 >= 1.0f);
      let x_3590 : bool = u_xlatb60;
      let x_3592 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3590 | x_3592);
      let x_3596 : bool = u_xlatb35.x;
      if (x_3596) {
        x_3597 = 1.0f;
      } else {
        let x_3602 : f32 = u_xlat10.x;
        x_3597 = x_3602;
      }
      let x_3603 : f32 = x_3597;
      u_xlat10.x = x_3603;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3608 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3608) + 1.0f);
    let x_3611 : f32 = u_xlat1;
    let x_3612 : f32 = u_xlat35;
    let x_3615 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3611 * x_3612) + x_3615);
    let x_3618 : f32 = u_xlat83;
    let x_3620 : f32 = u_xlat10.x;
    u_xlat83 = (x_3618 * x_3620);
    let x_3622 : vec3<f32> = u_xlat2;
    let x_3623 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3622, x_3623);
    let x_3627 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3627, 0.0f, 1.0f);
    let x_3630 : f32 = u_xlat83;
    let x_3632 : f32 = u_xlat10.x;
    u_xlat83 = (x_3630 * x_3632);
    let x_3634 : f32 = u_xlat83;
    let x_3636 : i32 = u_xlati81;
    let x_3638 : vec4<f32> = x_2103.x_AdditionalLightsColor[x_3636];
    let x_3640 : vec3<f32> = (vec3<f32>(x_3634, x_3634, x_3634) * vec3<f32>(x_3638.x, x_3638.y, x_3638.z));
    let x_3641 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3640.x, x_3640.y, x_3640.z, x_3641.w);
    let x_3643 : vec4<f32> = u_xlat8;
    let x_3645 : vec4<f32> = u_xlat9;
    let x_3648 : vec3<f32> = u_xlat26;
    let x_3649 : vec3<f32> = ((vec3<f32>(x_3643.x, x_3643.y, x_3643.z) * vec3<f32>(x_3645.x, x_3645.x, x_3645.x)) + x_3648);
    let x_3650 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3649.x, x_3649.y, x_3649.z, x_3650.w);
    let x_3652 : vec4<f32> = u_xlat8;
    let x_3654 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3652.x, x_3652.y, x_3652.z), vec3<f32>(x_3654.x, x_3654.y, x_3654.z));
    let x_3657 : f32 = u_xlat81;
    u_xlat81 = max(x_3657, 1.17549435e-38f);
    let x_3659 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3659);
    let x_3661 : f32 = u_xlat81;
    let x_3663 : vec4<f32> = u_xlat8;
    let x_3665 : vec3<f32> = (vec3<f32>(x_3661, x_3661, x_3661) * vec3<f32>(x_3663.x, x_3663.y, x_3663.z));
    let x_3666 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3665.x, x_3665.y, x_3665.z, x_3666.w);
    let x_3668 : vec3<f32> = u_xlat2;
    let x_3669 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3668, vec3<f32>(x_3669.x, x_3669.y, x_3669.z));
    let x_3672 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3672, 0.0f, 1.0f);
    let x_3674 : vec3<f32> = u_xlat34;
    let x_3675 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3674, vec3<f32>(x_3675.x, x_3675.y, x_3675.z));
    let x_3680 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3680, 0.0f, 1.0f);
    let x_3683 : f32 = u_xlat81;
    let x_3684 : f32 = u_xlat81;
    u_xlat81 = (x_3683 * x_3684);
    let x_3686 : f32 = u_xlat81;
    let x_3688 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3686 * x_3688) + 1.00001001358032226562f);
    let x_3692 : f32 = u_xlat8.x;
    let x_3694 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3692 * x_3694);
    let x_3697 : f32 = u_xlat81;
    let x_3698 : f32 = u_xlat81;
    u_xlat81 = (x_3697 * x_3698);
    let x_3701 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3701, 0.10000000149011611938f);
    let x_3704 : f32 = u_xlat81;
    let x_3706 : f32 = u_xlat8.x;
    u_xlat81 = (x_3704 * x_3706);
    let x_3708 : f32 = u_xlat79;
    let x_3709 : f32 = u_xlat81;
    u_xlat81 = (x_3708 * x_3709);
    let x_3711 : f32 = u_xlat80;
    let x_3712 : f32 = u_xlat81;
    u_xlat81 = (x_3711 / x_3712);
    let x_3714 : vec4<f32> = u_xlat0;
    let x_3716 : f32 = u_xlat81;
    let x_3719 : vec3<f32> = u_xlat5;
    let x_3720 : vec3<f32> = ((vec3<f32>(x_3714.x, x_3714.y, x_3714.z) * vec3<f32>(x_3716, x_3716, x_3716)) + x_3719);
    let x_3721 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3720.x, x_3720.y, x_3720.z, x_3721.w);
    let x_3723 : vec4<f32> = u_xlat8;
    let x_3725 : vec4<f32> = u_xlat10;
    let x_3728 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3723.x, x_3723.y, x_3723.z) * vec3<f32>(x_3725.x, x_3725.y, x_3725.z)) + x_3728);

    continuing {
      let x_3730 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3730 + bitcast<u32>(1i));
    }
  }
  let x_3732 : vec4<f32> = u_xlat6;
  let x_3734 : vec4<f32> = u_xlat3;
  let x_3737 : vec4<f32> = u_xlat4;
  let x_3739 : vec3<f32> = ((vec3<f32>(x_3732.x, x_3732.y, x_3732.z) * vec3<f32>(x_3734.x, x_3734.z, x_3734.w)) + vec3<f32>(x_3737.x, x_3737.y, x_3737.z));
  let x_3740 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3739.x, x_3739.y, x_3739.z, x_3740.w);
  let x_3742 : vec3<f32> = u_xlat32;
  let x_3743 : vec4<f32> = u_xlat0;
  let x_3745 : vec3<f32> = (x_3742 + vec3<f32>(x_3743.x, x_3743.y, x_3743.z));
  let x_3746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3745.x, x_3745.y, x_3745.z, x_3746.w);
  let x_3748 : f32 = u_xlat77;
  let x_3749 : f32 = u_xlat77;
  u_xlat75 = (x_3748 * -(x_3749));
  let x_3752 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3752);
  let x_3754 : vec4<f32> = u_xlat0;
  let x_3757 : vec4<f32> = x_29.unity_FogColor;
  let x_3760 : vec3<f32> = (vec3<f32>(x_3754.x, x_3754.y, x_3754.z) + -(vec3<f32>(x_3757.x, x_3757.y, x_3757.z)));
  let x_3761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
  let x_3765 : f32 = u_xlat75;
  let x_3767 : vec4<f32> = u_xlat0;
  let x_3771 : vec4<f32> = x_29.unity_FogColor;
  let x_3773 : vec3<f32> = ((vec3<f32>(x_3765, x_3765, x_3765) * vec3<f32>(x_3767.x, x_3767.y, x_3767.z)) + vec3<f32>(x_3771.x, x_3771.y, x_3771.z));
  let x_3774 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3773.x, x_3773.y, x_3773.z, x_3774.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


