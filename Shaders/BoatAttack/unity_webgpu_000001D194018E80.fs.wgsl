struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightDir : vec4<f32>,
  x_LightColor : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(1) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_21 / x_26);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec2<f32> = (vec2<f32>(x_42.x, x_42.y) / vec2<f32>(x_44.w, x_44.w));
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_46.x, x_46.y, x_47.z);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_60.x, x_60.y));
  u_xlat12 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat12;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat12 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat12;
  u_xlat12 = (1.0f / x_74);
  let x_76 : f32 = u_xlat12;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_76, x_76, x_76) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat2 = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_94 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_96 : vec4<f32> = u_xlat0;
  let x_99 : vec3<f32> = u_xlat2;
  let x_100 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + x_99);
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_100.z);
  let x_104 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_106 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.z, x_106.z, x_106.z)) + vec3<f32>(x_109.x, x_109.y, x_109.w));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_119 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) + vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_126 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_128 : vec3<f32> = (vec3<f32>(x_122.x, x_122.y, x_122.z) + -(x_126));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_131.x, x_131.y, x_131.z), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_136);
  let x_138 : f32 = u_xlat12;
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_150 : vec3<f32> = u_xlat1;
  let x_152 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_150.x, x_150.y));
  u_xlat2 = vec3<f32>(x_152.x, x_152.y, x_152.z);
  let x_154 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_154 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_161 : vec3<f32> = u_xlat2;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_161, x_162);
  let x_164 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_164);
  let x_166 : f32 = u_xlat12;
  let x_168 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_166, x_166, x_166) * x_168);
  let x_170 : vec4<f32> = u_xlat0;
  let x_173 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(-(vec3<f32>(x_170.x, x_170.y, x_170.z)), x_173);
  let x_175 : f32 = u_xlat12;
  let x_176 : f32 = u_xlat12;
  u_xlat12 = (x_175 + x_176);
  let x_178 : vec3<f32> = u_xlat2;
  let x_179 : f32 = u_xlat12;
  let x_183 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = ((x_178 * -(vec3<f32>(x_179, x_179, x_179))) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec3<f32> = u_xlat2;
  let x_192 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(x_189, -(vec3<f32>(x_192.x, x_192.y, x_192.z)));
  let x_196 : f32 = u_xlat12;
  u_xlat12 = clamp(x_196, 0.0f, 1.0f);
  let x_199 : f32 = u_xlat12;
  let x_203 : vec4<f32> = x_14.x_LightColor;
  u_xlat2 = (vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = x_14.x_LightDir;
  u_xlat0.x = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_215 : f32 = u_xlat0.x;
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = (x_215 * x_217);
  let x_221 : f32 = u_xlat0.x;
  let x_223 : f32 = u_xlat0.x;
  u_xlat0.x = (x_221 * x_223);
  let x_232 : vec3<f32> = u_xlat1;
  let x_234 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_232.x, x_232.y));
  u_xlat3 = x_234;
  let x_240 : vec3<f32> = u_xlat1;
  let x_242 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_240.x, x_240.y));
  u_xlat1 = vec3<f32>(x_242.x, x_242.y, x_242.z);
  let x_246 : f32 = u_xlat3.w;
  u_xlat0.y = (-(x_246) + 1.0f);
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_255.x, x_255.y));
  u_xlat0.x = x_257.x;
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = (x_261 * 16.0f);
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec3<f32> = u_xlat1;
  let x_271 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.x, x_265.x) * vec3<f32>(x_267.x, x_267.y, x_267.z)) + x_270);
  let x_272 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_276 : vec3<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = (x_276 * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

