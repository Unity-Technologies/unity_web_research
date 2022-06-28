struct PGlobals {
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlat9 : f32;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD5;
  let x_22 : vec4<f32> = x_17.x_LightPositionRange;
  u_xlat0 = (x_12 + -(vec3<f32>(x_22.x, x_22.y, x_22.z)));
  let x_31 : f32 = u_xlat0.y;
  let x_35 : f32 = u_xlat0.x;
  u_xlat9 = max(abs(x_31), abs(x_35));
  let x_40 : f32 = u_xlat0.z;
  let x_42 : f32 = u_xlat9;
  u_xlat9 = max(abs(x_40), x_42);
  let x_44 : f32 = u_xlat9;
  let x_48 : f32 = x_17.x_LightProjectionParams.z;
  u_xlat9 = (x_44 + -(x_48));
  let x_51 : f32 = u_xlat9;
  u_xlat9 = max(x_51, 0.00001f);
  let x_54 : f32 = u_xlat9;
  let x_57 : f32 = x_17.x_LightProjectionParams.w;
  u_xlat9 = (x_54 * x_57);
  let x_60 : f32 = x_17.x_LightProjectionParams.y;
  let x_61 : f32 = u_xlat9;
  u_xlat9 = (x_60 / x_61);
  let x_63 : f32 = u_xlat9;
  let x_65 : f32 = x_17.x_LightProjectionParams.x;
  u_xlat9 = (x_63 + -(x_65));
  let x_68 : f32 = u_xlat9;
  u_xlat9 = (-(x_68) + 1.0f);
  let x_74 : vec3<f32> = u_xlat0;
  let x_75 : f32 = u_xlat9;
  txVec0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75);
  let x_90 : vec4<f32> = txVec0;
  let x_92 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_90.xyz, x_90.w);
  u_xlat0.x = x_92;
  let x_97 : f32 = x_17.x_LightShadowData.x;
  u_xlat3.x = (-(x_97) + 1.0f);
  let x_102 : f32 = u_xlat0.x;
  let x_104 : f32 = u_xlat3.x;
  let x_107 : f32 = x_17.x_LightShadowData.x;
  u_xlat0.x = ((x_102 * x_104) + x_107);
  let x_110 : vec3<f32> = vs_TEXCOORD5;
  let x_114 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_110.y, x_110.y, x_110.y) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_118 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_120 : vec3<f32> = vs_TEXCOORD5;
  let x_123 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + x_123);
  let x_126 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_128 : vec3<f32> = vs_TEXCOORD5;
  let x_131 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.z, x_128.z, x_128.z)) + x_131);
  let x_133 : vec3<f32> = u_xlat3;
  let x_136 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat3 = (x_133 + vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_141 : vec3<f32> = u_xlat3;
  let x_142 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_141, x_142);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_153);
  u_xlat3.x = x_154.w;
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_167.x, x_167.x));
  u_xlat6 = x_169.x;
  let x_172 : f32 = u_xlat3.x;
  let x_173 : f32 = u_xlat6;
  u_xlat3.x = (x_172 * x_173);
  let x_177 : f32 = u_xlat0.x;
  let x_179 : f32 = u_xlat3.x;
  u_xlat0.x = (x_177 * x_179);
  let x_182 : vec3<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_17.x_LightColor0;
  u_xlat0 = (vec3<f32>(x_182.x, x_182.x, x_182.x) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_190 : vec4<f32> = vs_TEXCOORD4;
  let x_192 : vec4<f32> = vs_TEXCOORD4;
  u_xlat9 = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_195);
  let x_197 : f32 = u_xlat9;
  let x_199 : vec4<f32> = vs_TEXCOORD4;
  let x_201 : vec3<f32> = (vec3<f32>(x_197, x_197, x_197) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_208 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_208;
  let x_212 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_212;
  let x_215 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_215;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), x_219);
  let x_221 : f32 = u_xlat9;
  u_xlat9 = clamp(x_221, 0.0f, 1.0f);
  let x_224 : f32 = u_xlat9;
  let x_226 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_224, x_224, x_224) * x_226);
  let x_229 : vec4<f32> = vs_TEXCOORD1;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_229.x, x_229.y, x_229.z)), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat9;
  let x_236 : f32 = u_xlat9;
  u_xlat9 = (x_235 + x_236);
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : f32 = u_xlat9;
  let x_244 : vec4<f32> = vs_TEXCOORD1;
  let x_247 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * -(vec3<f32>(x_240, x_240, x_240))) + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), x_252);
  let x_254 : f32 = u_xlat9;
  let x_255 : f32 = u_xlat9;
  u_xlat9 = (x_254 * x_255);
  let x_257 : f32 = u_xlat9;
  let x_258 : f32 = u_xlat9;
  u_xlat1.x = (x_257 * x_258);
  let x_263 : f32 = x_17.x_Glossiness;
  u_xlat1.y = (-(x_263) + 1.0f);
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_272.x, x_272.y));
  u_xlat9 = x_274.x;
  let x_276 : f32 = u_xlat9;
  u_xlat9 = (x_276 * 16.0f);
  let x_285 : vec4<f32> = vs_TEXCOORD0;
  let x_287 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_285.x, x_285.y));
  u_xlat1 = x_287;
  let x_290 : vec4<f32> = x_17.x_Color;
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292.x, x_292.y, x_292.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_300 : f32 = x_17.x_Metallic;
  let x_302 : f32 = x_17.x_Metallic;
  let x_304 : f32 = x_17.x_Metallic;
  let x_305 : vec3<f32> = vec3<f32>(x_300, x_302, x_304);
  let x_310 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * x_310) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_315 : f32 = u_xlat9;
  let x_317 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_315, x_315, x_315) * x_317);
  let x_320 : f32 = x_17.x_Metallic;
  u_xlat9 = ((-(x_320) * 0.959999979f) + 0.959999979f);
  let x_325 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = x_17.x_Color;
  let x_330 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_336 : f32 = u_xlat1.w;
  let x_338 : f32 = x_17.x_Color.w;
  SV_Target0.w = (x_336 * x_338);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : f32 = u_xlat9;
  let x_347 : vec3<f32> = u_xlat2;
  let x_348 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344, x_344, x_344)) + x_347);
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec3<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = (x_351 * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

