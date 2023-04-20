diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  /* @offset(0) */
  x_TerrainPatchInstanceData : vec4<f32>,
}

alias Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  /* @offset(0) */
  TerrainArray : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

alias Arr_1 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_1,
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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat3 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_70 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(0) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_307 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_27 : vec4<f32> = in_POSITION0;
  let x_36 : i32 = u_xlati0;
  let x_39 : vec4<f32> = x_35.TerrainArray[x_36].x_TerrainPatchInstanceData;
  u_xlat3 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat3;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_TerrainHeightmapRecipSize;
  u_xlat6 = (vec2<f32>(x_53.x, x_53.y) * vec2<f32>(x_60.z, x_60.w));
  let x_64 : vec2<f32> = u_xlat6;
  let x_73 : vec4<f32> = x_70.unity_LightmapST;
  let x_77 : vec4<f32> = x_70.unity_LightmapST;
  let x_79 : vec2<f32> = ((x_64 * vec2<f32>(x_73.x, x_73.y)) + vec2<f32>(x_77.z, x_77.w));
  let x_80 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_80.x, x_80.y, x_79.x, x_79.y);
  let x_82 : vec2<f32> = u_xlat6;
  let x_83 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_82.x, x_82.y, x_83.z, x_83.w);
  let x_86 : vec2<f32> = u_xlat6;
  let x_89 : vec4<f32> = x_57.x_Splat0_ST;
  let x_93 : vec4<f32> = x_57.x_Splat0_ST;
  let x_95 : vec2<f32> = ((x_86 * vec2<f32>(x_89.x, x_89.y)) + vec2<f32>(x_93.z, x_93.w));
  let x_96 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_98 : vec2<f32> = u_xlat6;
  let x_101 : vec4<f32> = x_57.x_Splat1_ST;
  let x_105 : vec4<f32> = x_57.x_Splat1_ST;
  let x_107 : vec2<f32> = ((x_98 * vec2<f32>(x_101.x, x_101.y)) + vec2<f32>(x_105.z, x_105.w));
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_108.x, x_108.y, x_107.x, x_107.y);
  let x_111 : vec2<f32> = u_xlat6;
  let x_114 : vec4<f32> = x_57.x_Splat2_ST;
  let x_118 : vec4<f32> = x_57.x_Splat2_ST;
  let x_120 : vec2<f32> = ((x_111 * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_121 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec2<f32> = u_xlat6;
  let x_126 : vec4<f32> = x_57.x_Splat3_ST;
  let x_130 : vec4<f32> = x_57.x_Splat3_ST;
  let x_132 : vec2<f32> = ((x_123 * vec2<f32>(x_126.x, x_126.y)) + vec2<f32>(x_130.z, x_130.w));
  let x_133 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_133.x, x_133.y, x_132.x, x_132.y);
  let x_138 : vec4<f32> = u_xlat0;
  let x_143 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_138.x, x_138.y)));
  let x_144 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_143.x, x_143.y, x_144.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_152 : vec2<f32> = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_150.x, x_150.z));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_153.z, x_153.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_167 : vec4<u32> = u_xlatu1;
  let x_171 : u32 = u_xlatu1.w;
  let x_173 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_167.x, x_167.y)), bitcast<i32>(x_171));
  u_xlat2 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_177 : vec4<u32> = u_xlatu1;
  let x_181 : u32 = u_xlatu1.w;
  let x_183 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_177.x, x_177.y)), bitcast<i32>(x_181));
  u_xlat6 = vec2<f32>(x_183.x, x_183.y);
  let x_188 : f32 = u_xlat6.y;
  let x_192 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_188 * 256.0f) + x_192);
  let x_196 : f32 = u_xlat6.x;
  let x_199 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat6.x = (x_196 * x_199);
  let x_203 : f32 = u_xlat6.x;
  u_xlat6.x = (x_203 * 0.00389105058275163174f);
  let x_208 : vec2<f32> = u_xlat6;
  let x_212 : vec4<f32> = x_70.unity_ObjectToWorld[1i];
  let x_214 : vec3<f32> = (vec3<f32>(x_208.x, x_208.x, x_208.x) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec4<f32> = x_70.unity_ObjectToWorld[0i];
  let x_220 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.x, x_220.x, x_220.x)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_226.y, x_225.y, x_225.z);
  let x_230 : vec4<f32> = x_70.unity_ObjectToWorld[2i];
  let x_232 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.y, x_232.y, x_232.y)) + vec3<f32>(x_235.x, x_235.z, x_235.w));
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = x_70.unity_ObjectToWorld[3i];
  let x_246 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec3<f32> = u_xlat2;
  let x_255 : vec3<f32> = ((x_249 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_256 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = x_70.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_258.y, x_258.y, x_258.y) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec4<f32> = x_70.unity_ObjectToWorld[0i];
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = u_xlat2;
  let x_271 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.x, x_267.x, x_267.x)) + x_270);
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_271.z);
  let x_275 : vec4<f32> = x_70.unity_ObjectToWorld[2i];
  let x_277 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.z, x_277.z, x_277.z)) + vec3<f32>(x_280.x, x_280.y, x_280.w));
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : f32 = u_xlat9;
  u_xlat9 = max(x_291, 1.17549435e-38f);
  let x_294 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_294);
  let x_298 : f32 = u_xlat9;
  let x_300 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat0;
  let x_309 : vec4<f32> = x_307.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_303.y, x_303.y, x_303.y, x_303.y) * x_309);
  let x_312 : vec4<f32> = x_307.unity_MatrixVP[0i];
  let x_313 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_312 * vec4<f32>(x_313.x, x_313.x, x_313.x, x_313.x)) + x_316);
  let x_319 : vec4<f32> = x_307.unity_MatrixVP[2i];
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_319 * vec4<f32>(x_320.z, x_320.z, x_320.z, x_320.z)) + x_323);
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = x_307.unity_MatrixVP[3i];
  gl_Position = (x_329 + x_331);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD3_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD3, gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

