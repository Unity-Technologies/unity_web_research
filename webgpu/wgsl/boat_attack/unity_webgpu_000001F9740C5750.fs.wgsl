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
  x_LightPos : vec4<f32>,
  /* @offset(128) */
  x_LightColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat11 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

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
  u_xlat15 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat15;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat15 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat15;
  u_xlat15 = (1.0f / x_74);
  let x_76 : f32 = u_xlat15;
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
  let x_129 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_14.x_LightPos;
  let x_136 : vec3<f32> = (vec3<f32>(x_129.x, x_129.y, x_129.z) + -(vec3<f32>(x_133.x, x_133.y, x_133.z)));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec3<f32> = u_xlat2;
  let x_140 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_139, x_140);
  let x_142 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat15;
  let x_146 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_154 : vec3<f32> = u_xlat1;
  let x_156 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_154.x, x_154.y));
  let x_157 : vec3<f32> = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat3;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat15;
  let x_179 : vec4<f32> = u_xlat3;
  let x_181 : vec3<f32> = (vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec3<f32> = u_xlat2;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(-(x_184), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat15;
  let x_190 : f32 = u_xlat15;
  u_xlat15 = (x_189 + x_190);
  let x_192 : vec4<f32> = u_xlat3;
  let x_194 : f32 = u_xlat15;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * -(vec3<f32>(x_194, x_194, x_194))) + -(x_198));
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : f32 = u_xlat15;
  u_xlat11 = inverseSqrt(x_207);
  let x_209 : f32 = u_xlat15;
  let x_212 : f32 = x_14.x_LightPos.w;
  u_xlat15 = (x_209 * x_212);
  let x_219 : f32 = u_xlat15;
  let x_221 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_219, x_219));
  u_xlat15 = x_221.x;
  let x_224 : f32 = u_xlat15;
  let x_228 : vec4<f32> = x_14.x_LightColor;
  u_xlat4 = (vec3<f32>(x_224, x_224, x_224) * vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat0;
  let x_233 : f32 = u_xlat11;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233, x_233, x_233));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec3<f32> = u_xlat2;
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(x_238, -(vec3<f32>(x_239.x, x_239.y, x_239.z)));
  let x_243 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), -(vec3<f32>(x_245.x, x_245.y, x_245.z)));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_251, 0.0f, 1.0f);
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec3<f32> = u_xlat4;
  let x_258 : vec3<f32> = (vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257);
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : f32 = u_xlat15;
  let x_262 : f32 = u_xlat15;
  u_xlat15 = (x_261 * x_262);
  let x_264 : f32 = u_xlat15;
  let x_265 : f32 = u_xlat15;
  u_xlat2.x = (x_264 * x_265);
  let x_273 : vec3<f32> = u_xlat1;
  let x_275 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_273.x, x_273.y));
  u_xlat3 = x_275;
  let x_281 : vec3<f32> = u_xlat1;
  let x_283 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_281.x, x_281.y));
  u_xlat1 = vec3<f32>(x_283.x, x_283.y, x_283.z);
  let x_286 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_286) + 1.0f);
  let x_295 : vec3<f32> = u_xlat2;
  let x_297 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_295.x, x_295.y));
  u_xlat15 = x_297.x;
  let x_299 : f32 = u_xlat15;
  u_xlat15 = (x_299 * 16.0f);
  let x_302 : f32 = u_xlat15;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z)) + x_307);
  let x_309 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = u_xlat1;
  let x_312 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * x_311);
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  u_xlat0.w = 1.0f;
  let x_318 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_318));
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


