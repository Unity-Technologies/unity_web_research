struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightColor : vec4<f32>,
  x_Time : vec4<f32>,
  unity_MatrixInvVP : mat4x4<f32>,
  x_Size : f32,
  x_WaterLevel : f32,
  x_BlendDistance : f32,
  @size(4)
  padding_1 : u32,
  x_MainLightDir : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_15 : PGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_CausticMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_CausticMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : f32 = x_15.x_Time.x;
  u_xlat0.x = (x_22 * 0.25f);
  let x_31 : vec4<f32> = vs_TEXCOORD0;
  let x_33 : vec4<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec2<f32>(x_31.x, x_31.y) / vec2<f32>(x_33.w, x_33.w));
  let x_38 : vec2<f32> = u_xlat3;
  let x_44 : vec2<f32> = ((x_38 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_45.z, x_45.w);
  let x_57 : vec2<f32> = u_xlat3;
  let x_60 : f32 = x_15.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_57, x_60);
  u_xlat3.x = x_61.x;
  let x_65 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = x_15.unity_MatrixInvVP[1i];
  u_xlat2 = (vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y) * -(x_71));
  let x_75 : vec4<f32> = x_15.unity_MatrixInvVP[0i];
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_75 * vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x)) + x_79);
  let x_82 : vec4<f32> = x_15.unity_MatrixInvVP[2i];
  let x_83 : vec2<f32> = u_xlat3;
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_82 * vec4<f32>(x_83.x, x_83.x, x_83.x, x_83.x)) + x_86);
  let x_88 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = x_15.unity_MatrixInvVP[3i];
  u_xlat1 = (x_88 + x_90);
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_92.x, x_92.y, x_92.z, x_92.z) / vec4<f32>(x_94.w, x_94.w, x_94.w, x_94.w));
  let x_97 : vec4<f32> = u_xlat1;
  let x_102 : vec3<f32> = u_xlat0;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.w) * vec2<f32>(0.025f, 0.025f)) + vec2<f32>(x_102.x, x_102.x));
  let x_105 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_112 : vec3<f32> = u_xlat0;
  let x_115 : f32 = x_15.x_GlobalMipBias.x;
  let x_116 : vec4<f32> = textureSampleBias(x_CausticMap, sampler_CausticMap, vec2<f32>(x_112.x, x_112.y), x_115);
  u_xlat0.x = x_116.w;
  let x_121 : f32 = u_xlat0.x;
  u_xlat0.x = (x_121 + -0.5f);
  let x_126 : f32 = u_xlat0.x;
  u_xlat0.x = (x_126 * 0.100000001f);
  let x_130 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = x_15.x_MainLightDir[0i];
  u_xlat2.x = dot(vec4<f32>(x_130.x, x_130.y, x_130.w, x_130.w), x_134);
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = x_15.x_MainLightDir[1i];
  u_xlat2.y = dot(x_137, x_139);
  let x_143 : vec4<f32> = u_xlat2;
  let x_147 : f32 = x_15.x_Size;
  let x_150 : vec3<f32> = u_xlat0;
  let x_152 : vec2<f32> = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(x_147, x_147)) + vec2<f32>(x_150.x, x_150.x));
  let x_153 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_152.x, x_152.y, x_153.z);
  let x_156 : vec3<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_15.x_Time;
  u_xlat6 = (vec2<f32>(x_156.x, x_156.y) + vec2<f32>(x_159.x, x_159.x));
  let x_162 : vec3<f32> = u_xlat0;
  let x_164 : vec3<f32> = u_xlat0;
  let x_166 : vec2<f32> = (vec2<f32>(x_162.x, x_162.y) + vec2<f32>(x_164.x, x_164.y));
  let x_167 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_170 : f32 = u_xlat1.y;
  let x_173 : f32 = x_15.x_WaterLevel;
  u_xlat1.x = (x_170 + -(x_173));
  let x_179 : f32 = u_xlat1.y;
  let x_182 : f32 = x_15.x_WaterLevel;
  u_xlat4.x = (-(x_179) + x_182);
  let x_186 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_186, 0.0f, 1.0f);
  let x_193 : f32 = u_xlat1.x;
  u_xlat7 = (abs(x_193) * 4.0f);
  let x_198 : f32 = u_xlat1.x;
  let x_201 : f32 = x_15.x_BlendDistance;
  u_xlat1.x = (x_198 / x_201);
  let x_205 : f32 = u_xlat1.x;
  let x_207 : f32 = x_15.x_BlendDistance;
  u_xlat1.x = (x_205 + x_207);
  let x_211 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_211, 0.0f, 1.0f);
  let x_215 : f32 = u_xlat1.x;
  let x_217 : f32 = u_xlat4.x;
  u_xlat1.x = min(x_215, x_217);
  let x_220 : f32 = u_xlat7;
  let x_222 : f32 = x_15.x_BlendDistance;
  u_xlat4.x = (x_220 / x_222);
  let x_228 : vec2<f32> = u_xlat6;
  let x_230 : f32 = u_xlat4.x;
  let x_231 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, x_228, x_230);
  u_xlat6 = vec2<f32>(x_231.z, x_231.w);
  let x_236 : vec3<f32> = u_xlat0;
  let x_239 : f32 = u_xlat4.x;
  let x_240 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_236.x, x_236.y), x_239);
  u_xlat4 = vec3<f32>(x_240.x, x_240.z, x_240.w);
  let x_243 : f32 = u_xlat6.x;
  let x_245 : f32 = u_xlat4.y;
  u_xlat0.x = (x_243 * x_245);
  let x_249 : f32 = u_xlat0.x;
  let x_253 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_249 * 10.0f) + x_253);
  let x_257 : f32 = u_xlat6.y;
  u_xlat2.x = (x_257 * 0.5f);
  let x_262 : f32 = u_xlat4.y;
  let x_264 : f32 = u_xlat0.x;
  u_xlat0.x = (x_262 + x_264);
  let x_267 : vec3<f32> = u_xlat4;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.z, x_267.x) * vec2<f32>(0.75f, 1.0f));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_272.x, x_271.x, x_271.y, x_272.w);
  let x_275 : f32 = u_xlat1.x;
  let x_277 : f32 = u_xlat0.x;
  u_xlat0.x = (x_275 * x_277);
  let x_280 : vec4<f32> = u_xlat2;
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x));
  let x_287 : vec3<f32> = u_xlat0;
  let x_289 : vec4<f32> = x_15.x_MainLightColor;
  let x_293 : vec3<f32> = ((x_287 * vec3<f32>(x_289.x, x_289.y, x_289.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_294 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

