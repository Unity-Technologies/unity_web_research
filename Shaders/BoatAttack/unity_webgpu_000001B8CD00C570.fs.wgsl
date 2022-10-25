struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
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

@group(0) @binding(1) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(2) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(3) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var x_Splat3 : texture_2d<f32>;

@group(1) @binding(1) var<uniform> x_79 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_Control : texture_2d<f32>;

@group(0) @binding(5) var sampler_Control : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD1;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_23.x, x_23.y), x_34);
  u_xlat0.x = x_35.w;
  let x_44 : vec4<f32> = vs_TEXCOORD1;
  let x_47 : f32 = x_27.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_44.z, x_44.w), x_47);
  u_xlat0.y = x_48.w;
  let x_57 : vec4<f32> = vs_TEXCOORD2;
  let x_60 : f32 = x_27.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat0.z = x_61.w;
  let x_69 : vec4<f32> = vs_TEXCOORD2;
  let x_72 : f32 = x_27.x_GlobalMipBias.x;
  let x_73 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_69.z, x_69.w), x_72);
  u_xlat0.w = x_73.w;
  let x_83 : vec4<f32> = x_79.x_Control_TexelSize;
  let x_87 : vec2<f32> = (vec2<f32>(x_83.z, x_83.w) + vec2<f32>(-1.0f, -1.0f));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_91 : vec4<f32> = vs_TEXCOORD0;
  let x_93 : vec4<f32> = u_xlat1;
  let x_98 : vec2<f32> = ((vec2<f32>(x_91.x, x_91.y) * vec2<f32>(x_93.x, x_93.y)) + vec2<f32>(0.5f, 0.5f));
  let x_99 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = x_79.x_Control_TexelSize;
  let x_106 : vec2<f32> = (vec2<f32>(x_101.x, x_101.y) * vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_114 : vec4<f32> = u_xlat1;
  let x_117 : f32 = x_27.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_114.x, x_114.y), x_117);
  u_xlat1 = x_118;
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat2 = (-(x_120) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_125 + -(x_126));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_129 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_133, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_138 : vec4<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_138 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_142);
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat2 = (-(x_144) + x_146);
  let x_150 : f32 = u_xlat2.x;
  let x_153 : f32 = x_79.x_DiffuseRemapScale0.w;
  u_xlat3.x = (x_150 * x_153);
  let x_157 : f32 = u_xlat2.y;
  let x_160 : f32 = x_79.x_DiffuseRemapScale1.w;
  u_xlat3.y = (x_157 * x_160);
  let x_164 : f32 = u_xlat2.z;
  let x_167 : f32 = x_79.x_DiffuseRemapScale2.w;
  u_xlat3.z = (x_164 * x_167);
  let x_171 : f32 = u_xlat2.w;
  let x_174 : f32 = x_79.x_DiffuseRemapScale3.w;
  u_xlat3.w = (x_171 * x_174);
  let x_177 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_177 + x_178);
  let x_186 : f32 = x_79.x_NumLayersCount;
  u_xlatb2 = (4.0f >= x_186);
  let x_188 : bool = u_xlatb2;
  let x_189 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat0 = select(x_190, x_189, vec4<bool>(x_188, x_188, x_188, x_188));
  let x_196 : f32 = x_79.x_MaskMapRemapOffset0.x;
  let x_199 : f32 = x_79.x_MaskMapRemapScale0.x;
  u_xlat1.x = (x_196 + x_199);
  let x_204 : f32 = x_79.x_MaskMapRemapOffset1.x;
  let x_207 : f32 = x_79.x_MaskMapRemapScale1.x;
  u_xlat1.y = (x_204 + x_207);
  let x_212 : f32 = x_79.x_MaskMapRemapOffset2.x;
  let x_215 : f32 = x_79.x_MaskMapRemapScale3.x;
  u_xlat1.z = (x_212 + x_215);
  let x_220 : f32 = x_79.x_MaskMapRemapOffset3.x;
  let x_222 : f32 = x_79.x_MaskMapRemapScale3.x;
  u_xlat1.w = (x_220 + x_222);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : f32 = x_79.x_Metallic0;
  let x_231 : f32 = x_79.x_Metallic1;
  let x_234 : f32 = x_79.x_Metallic2;
  let x_237 : f32 = x_79.x_Metallic3;
  u_xlat1 = (x_225 + -(vec4<f32>(x_228, x_231, x_234, x_237)));
  let x_243 : f32 = x_79.x_LayerHasMask0;
  let x_246 : f32 = x_79.x_LayerHasMask1;
  let x_249 : f32 = x_79.x_LayerHasMask2;
  let x_252 : f32 = x_79.x_LayerHasMask3;
  let x_254 : vec4<f32> = u_xlat1;
  let x_257 : f32 = x_79.x_Metallic0;
  let x_259 : f32 = x_79.x_Metallic1;
  let x_261 : f32 = x_79.x_Metallic2;
  let x_263 : f32 = x_79.x_Metallic3;
  u_xlat1 = ((vec4<f32>(x_243, x_246, x_249, x_252) * x_254) + vec4<f32>(x_257, x_259, x_261, x_263));
  let x_268 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat1;
  let x_270 : f32 = dot(x_268, x_269);
  SV_Target0 = vec4<f32>(x_270, x_270, x_270, x_270);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

