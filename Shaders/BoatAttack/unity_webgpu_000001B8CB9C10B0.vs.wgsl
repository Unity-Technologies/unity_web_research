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

@group(1) @binding(1) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_41 : x_Terrain;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_183 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
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
  let x_95 : vec3<f32> = in_NORMAL0;
  let x_99 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_95, vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_105, vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_112 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_112, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : f32 = u_xlat6;
  u_xlat6 = max(x_125, 1.17549435e-37f);
  let x_128 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_128);
  let x_132 : f32 = u_xlat6;
  let x_134 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_132, x_132, x_132) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec4<f32> = in_POSITION0;
  let x_142 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_150 : vec4<f32> = in_POSITION0;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_161 : vec4<f32> = in_POSITION0;
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_175 : vec3<f32> = (vec3<f32>(x_169.x, x_169.y, x_169.z) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_183.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_179.y, x_179.y, x_179.y, x_179.y) * x_185);
  let x_188 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_189 : vec4<f32> = u_xlat0;
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_188 * vec4<f32>(x_189.x, x_189.x, x_189.x, x_189.x)) + x_192);
  let x_195 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_196 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_195 * vec4<f32>(x_196.z, x_196.z, x_196.z, x_196.z)) + x_199);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = x_183.unity_MatrixVP[3i];
  gl_Position = (x_205 + x_207);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD3_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD3, gl_Position);
}

