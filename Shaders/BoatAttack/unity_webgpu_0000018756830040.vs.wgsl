const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  x_TerrainPatchInstanceData : vec4<f32>,
}

type Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  TerrainArray : Arr,
}

struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  x_ShadowBias : vec4<f32>,
  x_LightDirection : vec3<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_35 : UnityInstancing_Terrain;

@group(0) @binding(0) var x_TerrainHeightmapTexture : texture_2d<f32>;

@group(0) @binding(1) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(1) @binding(3) var<uniform> x_120 : x_Terrain;

@group(1) @binding(1) var<uniform> x_140 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_194 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat3 : vec2<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
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
  let x_55 : vec4<f32> = u_xlat0;
  let x_60 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_55.x, x_55.y)));
  let x_61 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_60.x, x_60.y, x_61.z, x_61.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_74 : vec4<u32> = u_xlatu1;
  let x_78 : u32 = u_xlatu1.w;
  let x_80 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_74.x, x_74.y)), bitcast<i32>(x_78));
  u_xlat6 = vec2<f32>(x_80.x, x_80.y);
  let x_85 : vec4<u32> = u_xlatu1;
  let x_89 : u32 = u_xlatu1.w;
  let x_91 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_85.x, x_85.y)), bitcast<i32>(x_89));
  let x_93 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.z);
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_96 : vec4<f32> = u_xlat1;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_109 : f32 = u_xlat6.y;
  let x_113 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_109 * 256.0f) + x_113);
  let x_117 : f32 = u_xlat6.x;
  let x_124 : f32 = x_120.x_TerrainHeightmapScale.y;
  u_xlat6.x = (x_117 * x_124);
  let x_128 : f32 = u_xlat6.x;
  u_xlat6.x = (x_128 * 0.00389105058f);
  let x_134 : vec2<f32> = u_xlat6;
  let x_143 : vec4<f32> = x_140.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_134.x, x_134.x, x_134.x) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = x_120.x_TerrainHeightmapScale;
  u_xlat6 = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_149.x, x_149.z));
  let x_154 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_120.x_TerrainHeightmapRecipSize;
  vs_TEXCOORD0 = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.z, x_158.w));
  let x_162 : vec4<f32> = x_140.unity_ObjectToWorld[0i];
  let x_164 : vec2<f32> = u_xlat6;
  let x_167 : vec3<f32> = u_xlat2;
  let x_168 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.x, x_164.x, x_164.x)) + x_167);
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_173 : vec4<f32> = x_140.unity_ObjectToWorld[2i];
  let x_175 : vec2<f32> = u_xlat6;
  let x_178 : vec4<f32> = u_xlat0;
  let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.y, x_175.y, x_175.y)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = x_140.unity_ObjectToWorld[3i];
  let x_189 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_197 : vec3<f32> = x_194.x_LightDirection;
  let x_199 : vec4<f32> = x_194.x_ShadowBias;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = ((x_197 * vec3<f32>(x_199.x, x_199.x, x_199.x)) + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = x_140.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_207.y, x_207.y, x_207.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_214 : vec4<f32> = x_140.unity_ObjectToWorld[0i];
  let x_216 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = u_xlat2;
  let x_220 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + x_219);
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_220.z);
  let x_224 : vec4<f32> = x_140.unity_ObjectToWorld[2i];
  let x_226 : vec4<f32> = u_xlat1;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.z, x_226.z, x_226.z)) + vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : f32 = u_xlat9;
  u_xlat9 = max(x_240, 1.17549435e-37f);
  let x_243 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat9;
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = x_194.x_LightDirection;
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(x_253, vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : f32 = u_xlat9;
  u_xlat9 = clamp(x_257, 0.0f, 1.0f);
  let x_261 : f32 = u_xlat9;
  u_xlat9 = (-(x_261) + 1.0f);
  let x_264 : f32 = u_xlat9;
  let x_266 : f32 = x_194.x_ShadowBias.y;
  u_xlat9 = (x_264 * x_266);
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : f32 = u_xlat9;
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270, x_270, x_270)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = x_194.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_278.y, x_278.y, x_278.y, x_278.y) * x_281);
  let x_284 : vec4<f32> = x_194.unity_MatrixVP[0i];
  let x_285 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_284 * vec4<f32>(x_285.x, x_285.x, x_285.x, x_285.x)) + x_288);
  let x_291 : vec4<f32> = x_194.unity_MatrixVP[2i];
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_291 * vec4<f32>(x_292.z, x_292.z, x_292.z, x_292.z)) + x_295);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = x_194.unity_MatrixVP[3i];
  u_xlat0 = (x_297 + x_299);
  let x_306 : f32 = u_xlat0.z;
  gl_Position.z = min(x_306, 1.0f);
  let x_310 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = vec3<f32>(x_310.x, x_310.y, x_310.w);
  let x_314 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_311.x, x_311.y, x_314.z, x_311.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

