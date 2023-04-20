diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  x_Time : vec4<f32>,
  /* @offset(48) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(64) */
  unity_MatrixInvVP : mat4x4<f32>,
  /* @offset(128) */
  x_CameraDepthTexture_TexelSize : vec4<f32>,
  /* @offset(144) */
  x_Size : f32,
  /* @offset(148) */
  x_WaterLevel : f32,
  /* @offset(152) */
  x_BlendDistance : f32,
  /* @offset(160) */
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
  let x_101 : vec4<f32> = x_14.unity_MatrixInvVP[2i];
  let x_102 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_101 * vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x)) + x_105);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = x_14.unity_MatrixInvVP[3i];
  u_xlat0 = (x_107 + x_109);
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_111.x, x_111.y, x_111.z, x_111.z) / vec4<f32>(x_113.w, x_113.w, x_113.w, x_113.w));
  let x_117 : f32 = x_14.x_Time.x;
  u_xlat1.x = (x_117 * 0.25f);
  let x_121 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.w) * vec2<f32>(0.02500000037252902985f, 0.02500000037252902985f)) + vec2<f32>(x_126.x, x_126.x));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_136 : vec4<f32> = u_xlat1;
  let x_139 : f32 = x_14.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(x_CausticMap, sampler_CausticMap, vec2<f32>(x_136.x, x_136.y), x_139);
  u_xlat1.x = x_140.w;
  let x_145 : f32 = u_xlat1.x;
  u_xlat1.x = (x_145 + -0.5f);
  let x_150 : f32 = u_xlat1.x;
  u_xlat1.x = (x_150 * 0.10000000149011611938f);
  let x_157 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = x_14.x_MainLightDir[0i];
  u_xlat2.x = dot(vec4<f32>(x_157.x, x_157.y, x_157.w, x_157.w), x_161);
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = x_14.x_MainLightDir[1i];
  u_xlat2.y = dot(x_164, x_166);
  let x_170 : vec3<f32> = u_xlat2;
  let x_174 : f32 = x_14.x_Size;
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec2<f32> = ((vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_174, x_174)) + vec2<f32>(x_177.x, x_177.x));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_179.x, x_180.y, x_179.y, x_180.w);
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_14.x_Time;
  let x_187 : vec2<f32> = (vec2<f32>(x_182.x, x_182.z) + vec2<f32>(x_185.x, x_185.x));
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat0;
  let x_192 : vec4<f32> = u_xlat0;
  let x_194 : vec2<f32> = (vec2<f32>(x_190.x, x_190.z) + vec2<f32>(x_192.x, x_192.z));
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_195.y, x_194.y, x_195.w);
  let x_199 : f32 = u_xlat0.y;
  let x_202 : f32 = x_14.x_WaterLevel;
  u_xlat9 = (x_199 + -(x_202));
  let x_207 : f32 = u_xlat0.y;
  let x_210 : f32 = x_14.x_WaterLevel;
  u_xlat3 = (-(x_207) + x_210);
  let x_212 : f32 = u_xlat3;
  u_xlat3 = clamp(x_212, 0.0f, 1.0f);
  let x_216 : f32 = u_xlat9;
  u_xlat7 = (abs(x_216) * 4.0f);
  let x_220 : f32 = u_xlat9;
  let x_223 : f32 = x_14.x_BlendDistance;
  u_xlat9 = (x_220 / x_223);
  let x_225 : f32 = u_xlat9;
  let x_227 : f32 = x_14.x_BlendDistance;
  u_xlat9 = (x_225 + x_227);
  let x_229 : f32 = u_xlat9;
  u_xlat9 = clamp(x_229, 0.0f, 1.0f);
  let x_231 : f32 = u_xlat9;
  let x_232 : f32 = u_xlat3;
  u_xlat3 = min(x_231, x_232);
  let x_234 : f32 = u_xlat7;
  let x_236 : f32 = x_14.x_BlendDistance;
  u_xlat9 = (x_234 / x_236);
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : f32 = u_xlat9;
  let x_244 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_241.x, x_241.y), x_243);
  let x_245 : vec2<f32> = vec2<f32>(x_244.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat9;
  let x_254 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_251.x, x_251.z), x_253);
  let x_255 : vec3<f32> = vec3<f32>(x_254.x, x_254.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_256.y, x_255.y, x_255.z);
  let x_260 : f32 = u_xlat0.z;
  let x_262 : f32 = u_xlat1.x;
  u_xlat7 = (x_260 * x_262);
  let x_264 : f32 = u_xlat7;
  let x_268 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_264 * 10.0f) + x_268);
  let x_272 : f32 = u_xlat1.y;
  u_xlat2.x = (x_272 * 0.5f);
  let x_276 : f32 = u_xlat0.z;
  let x_278 : f32 = u_xlat1.x;
  u_xlat6.x = (x_276 + x_278);
  let x_281 : vec4<f32> = u_xlat0;
  let x_285 : vec2<f32> = (vec2<f32>(x_281.w, x_281.x) * vec2<f32>(0.75f, 1.0f));
  let x_286 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_286.x, x_285.x, x_285.y);
  let x_288 : f32 = u_xlat3;
  let x_290 : f32 = u_xlat6.x;
  u_xlat0.x = (x_288 * x_290);
  let x_293 : vec3<f32> = u_xlat2;
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec3<f32> = (x_293 * vec3<f32>(x_294.x, x_294.x, x_294.x));
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_301 : vec4<f32> = u_xlat0;
  let x_304 : vec4<f32> = x_14.x_MainLightColor;
  let x_306 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
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


