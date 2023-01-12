struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_SoftParticleFadeParams : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
  x_DistortionStrengthScaled : f32,
  x_DistortionBlend : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(3) var x_GrabTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrabTexture : sampler;

var<private> vs_TEXCOORD0 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb9 : bool;
  var u_xlat4 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var x_296 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_29.x_Color;
  u_xlat0 = (x_25 * x_33);
  let x_40 : f32 = u_xlat0.w;
  let x_45 : f32 = vs_COLOR0.w;
  u_xlat1 = (x_40 * x_45);
  let x_55 : vec4<f32> = x_29.x_SoftParticleFadeParams;
  let x_58 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_55.x, x_55.y, x_55.x, x_55.x));
  u_xlatb4 = vec2<bool>(x_58.x, x_58.y);
  let x_64 : bool = u_xlatb4.y;
  let x_67 : bool = u_xlatb4.x;
  u_xlatb9 = (x_64 | x_67);
  let x_69 : bool = u_xlatb9;
  if (x_69) {
    let x_75 : vec4<f32> = vs_TEXCOORD3;
    let x_77 : vec4<f32> = vs_TEXCOORD3;
    u_xlat4 = (vec2<f32>(x_75.x, x_75.y) / vec2<f32>(x_77.w, x_77.w));
    let x_86 : vec2<f32> = u_xlat4;
    let x_87 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_86);
    u_xlat9 = x_87.x;
    let x_93 : f32 = x_29.x_ZBufferParams.z;
    let x_94 : f32 = u_xlat9;
    let x_97 : f32 = x_29.x_ZBufferParams.w;
    u_xlat9 = ((x_93 * x_94) + x_97);
    let x_100 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_100);
    let x_102 : f32 = u_xlat9;
    let x_104 : f32 = x_29.x_SoftParticleFadeParams.x;
    u_xlat9 = (x_102 + -(x_104));
    let x_107 : f32 = u_xlat9;
    let x_109 : f32 = vs_TEXCOORD3.z;
    u_xlat9 = (x_107 + -(x_109));
    let x_112 : f32 = u_xlat9;
    let x_114 : f32 = x_29.x_SoftParticleFadeParams.y;
    u_xlat9 = (x_112 * x_114);
    let x_116 : f32 = u_xlat9;
    u_xlat9 = clamp(x_116, 0.0f, 1.0f);
    let x_118 : f32 = u_xlat9;
    let x_119 : f32 = u_xlat1;
    u_xlat1 = (x_118 * x_119);
  }
  let x_122 : f32 = vs_TEXCOORD3.z;
  let x_125 : f32 = x_29.x_CameraFadeParams.x;
  u_xlat9 = (x_122 + -(x_125));
  let x_128 : f32 = u_xlat9;
  let x_130 : f32 = x_29.x_CameraFadeParams.y;
  u_xlat9 = (x_128 * x_130);
  let x_132 : f32 = u_xlat9;
  u_xlat9 = clamp(x_132, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat9;
  let x_135 : f32 = u_xlat1;
  u_xlat4.x = (x_134 * x_135);
  let x_146 : vec2<f32> = vs_TEXCOORD1;
  let x_147 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_146);
  u_xlat2 = vec3<f32>(x_147.x, x_147.y, x_147.w);
  let x_150 : f32 = u_xlat2.z;
  let x_152 : f32 = u_xlat2.x;
  u_xlat2.x = (x_150 * x_152);
  let x_155 : vec3<f32> = u_xlat2;
  let x_162 : vec2<f32> = ((vec2<f32>(x_155.x, x_155.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_163 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_162.x, x_162.y, x_163.z);
  let x_166 : vec3<f32> = u_xlat2;
  let x_168 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(vec2<f32>(x_166.x, x_166.y), vec2<f32>(x_168.x, x_168.y));
  let x_173 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_173, 1.0f);
  let x_177 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_177) + 1.0f);
  let x_182 : f32 = u_xlat7.x;
  u_xlat2.z = sqrt(x_182);
  let x_185 : vec3<f32> = u_xlat2;
  let x_186 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(x_185, x_186);
  let x_190 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_190);
  let x_193 : vec2<f32> = u_xlat7;
  let x_195 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec2<f32>(x_193.x, x_193.x) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec2<f32> = u_xlat7;
  let x_201 : f32 = x_29.x_DistortionStrengthScaled;
  let x_203 : f32 = x_29.x_DistortionStrengthScaled;
  let x_204 : vec2<f32> = vec2<f32>(x_201, x_203);
  u_xlat7 = (x_198 * vec2<f32>(x_204.x, x_204.y));
  let x_209 : vec2<f32> = u_xlat7;
  let x_210 : vec2<f32> = u_xlat4;
  let x_214 : vec4<f32> = vs_TEXCOORD4;
  u_xlat7 = ((x_209 * vec2<f32>(x_210.x, x_210.x)) + vec2<f32>(x_214.x, x_214.y));
  let x_217 : vec2<f32> = u_xlat7;
  let x_218 : vec4<f32> = vs_TEXCOORD4;
  u_xlat7 = (x_217 / vec2<f32>(x_218.w, x_218.w));
  let x_226 : vec2<f32> = u_xlat7;
  let x_227 : vec4<f32> = textureSample(x_GrabTexture, sampler_GrabTexture, x_226);
  u_xlat2 = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : f32 = u_xlat1;
  let x_230 : f32 = u_xlat9;
  let x_234 : f32 = x_29.x_DistortionBlend;
  u_xlat9 = ((x_229 * x_230) + -(x_234));
  let x_237 : f32 = u_xlat9;
  u_xlat9 = clamp(x_237, 0.0f, 1.0f);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = vs_COLOR0;
  let x_244 : vec3<f32> = u_xlat2;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.y, x_241.z)) + -(x_244));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : f32 = u_xlat9;
  let x_251 : vec4<f32> = u_xlat0;
  let x_254 : vec3<f32> = u_xlat2;
  let x_255 : vec3<f32> = ((vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z)) + x_254);
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_261 : i32 = x_29.x_DstBlend;
  u_xlatb9 = (x_261 == 1i);
  let x_265 : f32 = vs_TEXCOORD0;
  u_xlat1 = x_265;
  let x_266 : f32 = u_xlat1;
  u_xlat1 = clamp(x_266, 0.0f, 1.0f);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : f32 = u_xlat1;
  u_xlat2 = (vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = x_29.unity_FogColor;
  let x_279 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + -(vec3<f32>(x_276.x, x_276.y, x_276.z)));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : f32 = u_xlat1;
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = x_29.unity_FogColor;
  let x_290 : vec3<f32> = ((vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_284.x, x_284.y, x_284.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_295 : bool = u_xlatb9;
  if (x_295) {
    let x_299 : vec3<f32> = u_xlat2;
    x_296 = x_299;
  } else {
    let x_301 : vec4<f32> = u_xlat0;
    x_296 = vec3<f32>(x_301.x, x_301.y, x_301.z);
  }
  let x_303 : vec3<f32> = x_296;
  let x_304 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : f32 = u_xlat4.x;
  SV_Target0.w = x_307;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

