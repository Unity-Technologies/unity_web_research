type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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
}

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : x_Terrain;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_292 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  let x_31 : vec2<f32> = ((x_13 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_32 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_32.x, x_32.y, x_31.x, x_31.y);
  let x_34 : vec2<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  let x_38 : vec2<f32> = in_TEXCOORD0;
  let x_44 : vec4<f32> = x_41.x_Splat0_ST;
  let x_48 : vec4<f32> = x_41.x_Splat0_ST;
  let x_50 : vec2<f32> = ((x_38 * vec2<f32>(x_44.x, x_44.y)) + vec2<f32>(x_48.z, x_48.w));
  let x_51 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_50.x, x_50.y, x_51.z, x_51.w);
  let x_53 : vec2<f32> = in_TEXCOORD0;
  let x_56 : vec4<f32> = x_41.x_Splat1_ST;
  let x_60 : vec4<f32> = x_41.x_Splat1_ST;
  let x_62 : vec2<f32> = ((x_53 * vec2<f32>(x_56.x, x_56.y)) + vec2<f32>(x_60.z, x_60.w));
  let x_63 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_63.x, x_63.y, x_62.x, x_62.y);
  let x_66 : vec2<f32> = in_TEXCOORD0;
  let x_69 : vec4<f32> = x_41.x_Splat2_ST;
  let x_73 : vec4<f32> = x_41.x_Splat2_ST;
  let x_75 : vec2<f32> = ((x_66 * vec2<f32>(x_69.x, x_69.y)) + vec2<f32>(x_73.z, x_73.w));
  let x_76 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_78 : vec2<f32> = in_TEXCOORD0;
  let x_81 : vec4<f32> = x_41.x_Splat3_ST;
  let x_85 : vec4<f32> = x_41.x_Splat3_ST;
  let x_87 : vec2<f32> = ((x_78 * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(x_85.z, x_85.w));
  let x_88 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_88.x, x_88.y, x_87.x, x_87.y);
  vs_TEXCOORD6 = 0.0f;
  let x_98 : vec3<f32> = in_NORMAL0;
  let x_103 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_105 : vec3<f32> = (vec3<f32>(x_98.y, x_98.y, x_98.y) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec3<f32> = ((vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_121 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_123.z, x_123.z, x_123.z)) + vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : f32 = u_xlat12;
  u_xlat12 = max(x_138, 1.17549435e-37f);
  let x_141 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_141);
  let x_143 : f32 = u_xlat12;
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_152 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec3<f32>(x_152.x, x_152.y, x_152.z);
  let x_157 : f32 = u_xlat0.y;
  let x_159 : f32 = u_xlat0.y;
  u_xlat1.x = (x_157 * x_159);
  let x_164 : f32 = u_xlat0.x;
  let x_166 : f32 = u_xlat0.x;
  let x_169 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_164 * x_166) + -(x_169));
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_174.y, x_174.z, x_174.z, x_174.x) * vec4<f32>(x_176.x, x_176.y, x_176.z, x_176.z));
  let x_183 : vec4<f32> = x_20.unity_SHBr;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_183, x_184);
  let x_189 : vec4<f32> = x_20.unity_SHBg;
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_189, x_190);
  let x_195 : vec4<f32> = x_20.unity_SHBb;
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_20.unity_SHC;
  let x_203 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = u_xlat3;
  let x_207 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203.x, x_203.x, x_203.x)) + x_206);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  u_xlat0.w = 1.0f;
  let x_215 : vec4<f32> = x_20.unity_SHAr;
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_215, x_216);
  let x_221 : vec4<f32> = x_20.unity_SHAg;
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_221, x_222);
  let x_227 : vec4<f32> = x_20.unity_SHAb;
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_227, x_228);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_240 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = max(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_246 : vec4<f32> = in_POSITION0;
  let x_249 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_251 : vec3<f32> = (vec3<f32>(x_246.y, x_246.y, x_246.y) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_257 : vec4<f32> = in_POSITION0;
  let x_260 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.x, x_257.x, x_257.x)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_268 : vec4<f32> = in_POSITION0;
  let x_271 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.z, x_268.z, x_268.z)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_282 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_286.x, x_286.y, x_286.z);
  let x_288 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = x_292.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_288.y, x_288.y, x_288.y, x_288.y) * x_294);
  let x_297 : vec4<f32> = x_292.unity_MatrixVP[0i];
  let x_298 : vec4<f32> = u_xlat0;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_297 * vec4<f32>(x_298.x, x_298.x, x_298.x, x_298.x)) + x_301);
  let x_304 : vec4<f32> = x_292.unity_MatrixVP[2i];
  let x_305 : vec4<f32> = u_xlat0;
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_304 * vec4<f32>(x_305.z, x_305.z, x_305.z, x_305.z)) + x_308);
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = x_292.unity_MatrixVP[3i];
  gl_Position = (x_314 + x_316);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}

