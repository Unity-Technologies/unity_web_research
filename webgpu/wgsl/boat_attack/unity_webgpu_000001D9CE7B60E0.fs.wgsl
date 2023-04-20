diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(32) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(48) */
  unity_CameraToWorld : mat4x4<f32>,
  /* @offset(112) */
  x_LightDir : vec4<f32>,
  /* @offset(128) */
  x_LightColor : vec4<f32>,
  /* @offset(144) */
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat9 : f32;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
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
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) + -(x_126));
  let x_129 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat12;
  let x_136 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_144 : vec3<f32> = u_xlat1;
  let x_146 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_144.x, x_144.y));
  let x_147 : vec3<f32> = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_148 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat3;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_160.x, x_160.y, x_160.z), vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_165);
  let x_167 : f32 = u_xlat12;
  let x_169 : vec4<f32> = u_xlat3;
  let x_171 : vec3<f32> = (vec3<f32>(x_167, x_167, x_167) * vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(-(x_174), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : f32 = u_xlat12;
  let x_180 : f32 = u_xlat12;
  u_xlat12 = (x_179 + x_180);
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : f32 = u_xlat12;
  let x_188 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * -(vec3<f32>(x_184, x_184, x_184))) + -(x_188));
  let x_191 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : f32 = u_xlat12;
  u_xlat12 = clamp(x_199, 0.0f, 1.0f);
  let x_203 : vec3<f32> = u_xlat2;
  let x_205 : vec4<f32> = x_14.x_LightDir;
  u_xlat9 = dot(x_203, -(vec3<f32>(x_205.x, x_205.y, x_205.z)));
  let x_209 : f32 = u_xlat9;
  let x_210 : f32 = u_xlat9;
  u_xlat9 = (x_209 * x_210);
  let x_212 : f32 = u_xlat9;
  let x_213 : f32 = u_xlat9;
  u_xlat2.x = (x_212 * x_213);
  let x_221 : vec3<f32> = u_xlat1;
  let x_223 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_221.x, x_221.y));
  u_xlat3 = x_223;
  let x_229 : vec3<f32> = u_xlat1;
  let x_231 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_229.x, x_229.y));
  u_xlat1 = vec3<f32>(x_231.x, x_231.y, x_231.z);
  let x_235 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_235) + 1.0f);
  let x_245 : vec3<f32> = u_xlat2;
  let x_247 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_245.x, x_245.y));
  u_xlat13 = x_247.x;
  let x_249 : f32 = u_xlat13;
  u_xlat13 = (x_249 * 16.0f);
  let x_252 : f32 = u_xlat13;
  let x_254 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + x_257);
  let x_259 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = x_14.unity_WorldToLight[1i];
  let x_265 : vec2<f32> = (vec2<f32>(x_259.y, x_259.y) * vec2<f32>(x_263.x, x_263.y));
  let x_266 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_265.x, x_265.y, x_266.z);
  let x_269 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_271 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = u_xlat2;
  let x_276 : vec2<f32> = ((vec2<f32>(x_269.x, x_269.y) * vec2<f32>(x_271.x, x_271.x)) + vec2<f32>(x_274.x, x_274.y));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  let x_280 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_282 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec2<f32> = ((vec2<f32>(x_280.x, x_280.y) * vec2<f32>(x_282.z, x_282.z)) + vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  let x_290 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_295 : vec2<f32> = (vec2<f32>(x_290.x, x_290.y) + vec2<f32>(x_293.x, x_293.y));
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  let x_303 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_303.x, x_303.y), -8.0f);
  u_xlat0.x = x_306.w;
  let x_309 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = x_14.x_LightColor;
  let x_315 : vec3<f32> = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : f32 = u_xlat12;
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = u_xlat1;
  let x_328 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * x_327);
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  u_xlat0.w = 1.0f;
  let x_334 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_334));
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


