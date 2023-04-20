diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(48) */
  unity_MatrixInvVP : mat4x4<f32>,
  /* @offset(112) */
  x_CameraDepthTexture_TexelSize : vec4<f32>,
  /* @offset(128) */
  x_Size : f32,
  /* @offset(132) */
  x_WaterLevel : f32,
  /* @offset(136) */
  x_BlendDistance : f32,
  /* @offset(144) */
  x_MainLightDir : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat6 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_CausticMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_CausticMap : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat3 : f32;

var<private> u_xlat7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_CameraDepthTexture_TexelSize;
  let x_27 : vec2<f32> = ((-(vec2<f32>(x_19.x, x_19.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_27.x, x_27.y, x_28.z, x_28.w);
  let x_34 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  u_xlat6 = (vec2<f32>(x_34.x, x_34.y) / vec2<f32>(x_36.w, x_36.w));
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec2<f32> = u_xlat6;
  let x_42 : vec2<f32> = min(vec2<f32>(x_39.x, x_39.y), x_41);
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_45 : vec2<f32> = u_xlat6;
  u_xlat6 = ((x_45 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_14.x_RTHandleScale;
  let x_58 : vec2<f32> = (vec2<f32>(x_52.x, x_52.y) * vec2<f32>(x_56.x, x_56.y));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_59.z, x_59.w);
  let x_71 : vec4<f32> = u_xlat0;
  let x_78 : f32 = x_14.x_GlobalMipBias.x;
  let x_79 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_71.x, x_71.y), x_78);
  u_xlat0.x = x_79.x;
  let x_84 : vec2<f32> = u_xlat6;
  let x_89 : vec4<f32> = x_14.unity_MatrixInvVP[1i];
  u_xlat1 = (vec4<f32>(x_84.y, x_84.y, x_84.y, x_84.y) * -(x_89));
  let x_93 : vec4<f32> = x_14.unity_MatrixInvVP[0i];
  let x_94 : vec2<f32> = u_xlat6;
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_93 * vec4<f32>(x_94.x, x_94.x, x_94.x, x_94.x)) + x_97);
  let x_100 : vec4<f32> = x_14.unity_MatrixInvVP[2i];
  let x_101 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_100 * vec4<f32>(x_101.x, x_101.x, x_101.x, x_101.x)) + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = x_14.unity_MatrixInvVP[3i];
  u_xlat0 = (x_106 + x_108);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_110.x, x_110.y, x_110.z, x_110.z) / vec4<f32>(x_112.w, x_112.w, x_112.w, x_112.w));
  let x_115 : vec4<f32> = u_xlat0;
  let x_119 : vec2<f32> = (vec2<f32>(x_115.x, x_115.w) * vec2<f32>(0.02500000037252902985f, 0.02500000037252902985f));
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_127 : vec4<f32> = u_xlat1;
  let x_130 : f32 = x_14.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(x_CausticMap, sampler_CausticMap, vec2<f32>(x_127.x, x_127.y), x_130);
  u_xlat1.x = x_131.w;
  let x_136 : f32 = u_xlat1.x;
  u_xlat1.x = (x_136 + -0.5f);
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = (x_141 * 0.10000000149011611938f);
  let x_148 : vec4<f32> = u_xlat0;
  let x_152 : vec4<f32> = x_14.x_MainLightDir[0i];
  u_xlat2.x = dot(vec4<f32>(x_148.x, x_148.y, x_148.w, x_148.w), x_152);
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = x_14.x_MainLightDir[1i];
  u_xlat2.y = dot(x_155, x_157);
  let x_161 : vec3<f32> = u_xlat2;
  let x_165 : f32 = x_14.x_Size;
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_165, x_165)) + vec2<f32>(x_168.x, x_168.x));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_171.y, x_170.y, x_171.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec2<f32> = (vec2<f32>(x_173.x, x_173.z) + vec2<f32>(x_175.x, x_175.z));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
  let x_182 : f32 = u_xlat0.y;
  let x_185 : f32 = x_14.x_WaterLevel;
  u_xlat9 = (x_182 + -(x_185));
  let x_190 : f32 = u_xlat0.y;
  let x_193 : f32 = x_14.x_WaterLevel;
  u_xlat3 = (-(x_190) + x_193);
  let x_195 : f32 = u_xlat3;
  u_xlat3 = clamp(x_195, 0.0f, 1.0f);
  let x_199 : f32 = u_xlat9;
  u_xlat7 = (abs(x_199) * 4.0f);
  let x_203 : f32 = u_xlat9;
  let x_206 : f32 = x_14.x_BlendDistance;
  u_xlat9 = (x_203 / x_206);
  let x_208 : f32 = u_xlat9;
  let x_210 : f32 = x_14.x_BlendDistance;
  u_xlat9 = (x_208 + x_210);
  let x_212 : f32 = u_xlat9;
  u_xlat9 = clamp(x_212, 0.0f, 1.0f);
  let x_214 : f32 = u_xlat9;
  let x_215 : f32 = u_xlat3;
  u_xlat3 = min(x_214, x_215);
  let x_217 : f32 = u_xlat7;
  let x_219 : f32 = x_14.x_BlendDistance;
  u_xlat9 = (x_217 / x_219);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : f32 = u_xlat9;
  let x_227 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_224.x, x_224.y), x_226);
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : f32 = u_xlat9;
  let x_237 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_234.x, x_234.z), x_236);
  let x_238 : vec2<f32> = vec2<f32>(x_237.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_239.y, x_238.y, x_239.w);
  let x_242 : f32 = u_xlat1.y;
  let x_244 : f32 = u_xlat0.x;
  u_xlat9 = (x_242 * x_244);
  let x_246 : f32 = u_xlat9;
  let x_250 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_246 * 10.0f) + x_250);
  let x_255 : f32 = u_xlat0.z;
  u_xlat2.x = (x_255 * 0.5f);
  let x_259 : f32 = u_xlat1.y;
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = (x_259 + x_261);
  let x_264 : vec4<f32> = u_xlat1;
  let x_268 : vec2<f32> = (vec2<f32>(x_264.z, x_264.x) * vec2<f32>(0.75f, 1.0f));
  let x_269 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_269.x, x_268.x, x_268.y);
  let x_271 : f32 = u_xlat3;
  let x_273 : f32 = u_xlat0.x;
  u_xlat0.x = (x_271 * x_273);
  let x_276 : vec3<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = (x_276 * vec3<f32>(x_277.x, x_277.x, x_277.x));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = x_14.x_MainLightColor;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
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


