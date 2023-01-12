struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  @size(4)
  padding : u32,
  x_SoftParticleFadeParams : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraDepthTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec2<bool>;
  var u_xlat1 : vec2<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_240 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_25 * x_34);
  let x_36 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_40.w, x_40.x, x_40.y, x_40.z));
  let x_51 : vec4<f32> = x_30.x_SoftParticleFadeParams;
  let x_54 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_51.x, x_51.y, x_51.x, x_51.x));
  u_xlatb1 = vec2<bool>(x_54.x, x_54.y);
  let x_60 : bool = u_xlatb1.y;
  let x_63 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_60 | x_63);
  let x_67 : bool = u_xlatb1.x;
  if (x_67) {
    let x_73 : vec4<f32> = vs_TEXCOORD3;
    let x_75 : vec4<f32> = vs_TEXCOORD3;
    u_xlat1 = (vec2<f32>(x_73.x, x_73.y) / vec2<f32>(x_75.w, x_75.w));
    let x_83 : vec2<f32> = u_xlat1;
    let x_84 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_83);
    u_xlat1.x = x_84.x;
    let x_92 : f32 = x_30.x_ZBufferParams.z;
    let x_94 : f32 = u_xlat1.x;
    let x_98 : f32 = x_30.x_ZBufferParams.w;
    u_xlat1.x = ((x_92 * x_94) + x_98);
    let x_103 : f32 = u_xlat1.x;
    u_xlat1.x = (1.0f / x_103);
    let x_107 : f32 = u_xlat1.x;
    let x_109 : f32 = x_30.x_SoftParticleFadeParams.x;
    u_xlat1.x = (x_107 + -(x_109));
    let x_114 : f32 = u_xlat1.x;
    let x_117 : f32 = vs_TEXCOORD3.z;
    u_xlat1.x = (x_114 + -(x_117));
    let x_122 : f32 = u_xlat1.x;
    let x_124 : f32 = x_30.x_SoftParticleFadeParams.y;
    u_xlat1.x = (x_122 * x_124);
    let x_128 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_128, 0.0f, 1.0f);
    let x_132 : f32 = u_xlat0.x;
    let x_134 : f32 = u_xlat1.x;
    u_xlat0.x = (x_132 * x_134);
  } else {
    u_xlat1.x = 1.0f;
  }
  let x_142 : f32 = vs_TEXCOORD3.z;
  let x_145 : f32 = x_30.x_CameraFadeParams.x;
  u_xlat4.x = (x_142 + -(x_145));
  let x_150 : f32 = u_xlat4.x;
  let x_152 : f32 = x_30.x_CameraFadeParams.y;
  u_xlat4.x = (x_150 * x_152);
  let x_156 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_156, 0.0f, 1.0f);
  let x_162 : f32 = u_xlat0.x;
  let x_164 : f32 = u_xlat4.x;
  SV_Target0.w = (x_162 * x_164);
  let x_174 : vec2<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_174);
  u_xlat2 = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_177 : vec3<f32> = u_xlat2;
  let x_180 : f32 = x_30.x_EmissionColor.x;
  let x_182 : f32 = x_30.x_EmissionColor.y;
  let x_184 : f32 = x_30.x_EmissionColor.z;
  u_xlat2 = (x_177 * vec3<f32>(x_180, x_182, x_184));
  let x_187 : vec3<f32> = u_xlat4;
  let x_189 : vec3<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_187.x, x_187.x, x_187.x) * x_189);
  let x_191 : vec3<f32> = u_xlat4;
  let x_192 : vec2<f32> = u_xlat1;
  let x_195 : vec4<f32> = u_xlat0;
  let x_197 : vec3<f32> = ((x_191 * vec3<f32>(x_192.x, x_192.x, x_192.x)) + vec3<f32>(x_195.y, x_195.z, x_195.w));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_204 : i32 = x_30.x_DstBlend;
  u_xlatb9 = (x_204 == 1i);
  let x_208 : f32 = vs_TEXCOORD0;
  u_xlat1.x = x_208;
  let x_211 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_211, 0.0f, 1.0f);
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : vec2<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x));
  let x_219 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = x_30.unity_FogColor;
  let x_225 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec2<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = x_30.unity_FogColor;
  let x_236 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : bool = u_xlatb9;
  if (x_239) {
    let x_243 : vec3<f32> = u_xlat4;
    x_240 = x_243;
  } else {
    let x_245 : vec4<f32> = u_xlat0;
    x_240 = vec3<f32>(x_245.x, x_245.y, x_245.z);
  }
  let x_247 : vec3<f32> = x_240;
  let x_248 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

