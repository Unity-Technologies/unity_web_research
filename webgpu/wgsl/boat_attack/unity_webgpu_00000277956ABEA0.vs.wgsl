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

@group(1) @binding(6) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat3 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(8) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

@group(1) @binding(7) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(19) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(18) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_265 : VGlobals;

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
  let x_65 : vec2<f32> = u_xlat6;
  let x_74 : vec4<f32> = x_71.unity_LightmapST;
  let x_78 : vec4<f32> = x_71.unity_LightmapST;
  let x_80 : vec2<f32> = ((x_65 * vec2<f32>(x_74.x, x_74.y)) + vec2<f32>(x_78.z, x_78.w));
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_81.x, x_81.y, x_80.x, x_80.y);
  let x_83 : vec2<f32> = u_xlat6;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_89 : vec4<f32> = u_xlat0;
  let x_94 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_89.x, x_89.y)));
  let x_95 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_103 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.z));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_118 : vec4<u32> = u_xlatu1;
  let x_122 : u32 = u_xlatu1.w;
  let x_124 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_118.x, x_118.y)), bitcast<i32>(x_122));
  u_xlat2 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  let x_128 : vec4<u32> = u_xlatu1;
  let x_132 : u32 = u_xlatu1.w;
  let x_134 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_128.x, x_128.y)), bitcast<i32>(x_132));
  u_xlat6 = vec2<f32>(x_134.x, x_134.y);
  let x_139 : f32 = u_xlat6.y;
  let x_143 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_139 * 256.0f) + x_143);
  let x_147 : f32 = u_xlat6.x;
  let x_150 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat6.x = (x_147 * x_150);
  let x_154 : f32 = u_xlat6.x;
  u_xlat6.x = (x_154 * 0.00389105058275163174f);
  let x_159 : vec2<f32> = u_xlat6;
  let x_163 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_165 : vec3<f32> = (vec3<f32>(x_159.x, x_159.x, x_159.x) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_171 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.x, x_171.x)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_177.y, x_176.y, x_176.z);
  let x_181 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_183 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.y, x_183.y, x_183.y)) + vec3<f32>(x_186.x, x_186.z, x_186.w));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_197 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_200 : vec3<f32> = u_xlat2;
  let x_206 : vec3<f32> = ((x_200 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_209.y, x_209.y, x_209.y) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_218 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.x, x_218.x, x_218.x)) + x_221);
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_222.z);
  let x_226 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_228 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.z, x_228.z, x_228.z)) + vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : f32 = u_xlat9;
  u_xlat9 = max(x_242, 1.17549435e-38f);
  let x_245 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_245);
  let x_249 : f32 = u_xlat9;
  let x_251 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  vs_TEXCOORD6 = 0.0f;
  vs_TEXCOORD4 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_259 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_261 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = x_265.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_261.y, x_261.y, x_261.y, x_261.y) * x_267);
  let x_270 : vec4<f32> = x_265.unity_MatrixVP[0i];
  let x_271 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_270 * vec4<f32>(x_271.x, x_271.x, x_271.x, x_271.x)) + x_274);
  let x_277 : vec4<f32> = x_265.unity_MatrixVP[2i];
  let x_278 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_277 * vec4<f32>(x_278.z, x_278.z, x_278.z, x_278.z)) + x_281);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = x_265.unity_MatrixVP[3i];
  gl_Position = (x_287 + x_289);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

