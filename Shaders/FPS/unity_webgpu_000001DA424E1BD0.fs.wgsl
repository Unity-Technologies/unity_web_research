struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_SoftParticleFadeParams : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DistortionBlend : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatb9 : bool;

var<private> u_xlat4 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_GrabTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_GrabTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_Color;
  u_xlat0 = (x_25 * x_33);
  let x_40 : f32 = u_xlat0.w;
  let x_45 : f32 = vs_COLOR0.w;
  u_xlat1 = (x_40 * x_45);
  let x_55 : vec4<f32> = x_28.x_SoftParticleFadeParams;
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
    let x_93 : f32 = x_28.x_ZBufferParams.z;
    let x_94 : f32 = u_xlat9;
    let x_97 : f32 = x_28.x_ZBufferParams.w;
    u_xlat9 = ((x_93 * x_94) + x_97);
    let x_100 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_100);
    let x_102 : f32 = u_xlat9;
    let x_104 : f32 = x_28.x_SoftParticleFadeParams.x;
    u_xlat9 = (x_102 + -(x_104));
    let x_107 : f32 = u_xlat9;
    let x_109 : f32 = vs_TEXCOORD3.z;
    u_xlat9 = (x_107 + -(x_109));
    let x_112 : f32 = u_xlat9;
    let x_114 : f32 = x_28.x_SoftParticleFadeParams.y;
    u_xlat9 = (x_112 * x_114);
    let x_116 : f32 = u_xlat9;
    u_xlat9 = clamp(x_116, 0.0f, 1.0f);
    let x_118 : f32 = u_xlat9;
    let x_119 : f32 = u_xlat1;
    u_xlat1 = (x_118 * x_119);
  }
  let x_122 : f32 = vs_TEXCOORD3.z;
  let x_125 : f32 = x_28.x_CameraFadeParams.x;
  u_xlat9 = (x_122 + -(x_125));
  let x_128 : f32 = u_xlat9;
  let x_130 : f32 = x_28.x_CameraFadeParams.y;
  u_xlat9 = (x_128 * x_130);
  let x_132 : f32 = u_xlat9;
  u_xlat9 = clamp(x_132, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat9;
  let x_135 : f32 = u_xlat1;
  u_xlat4.x = (x_134 * x_135);
  let x_140 : vec4<f32> = vs_TEXCOORD4;
  let x_142 : vec4<f32> = vs_TEXCOORD4;
  u_xlat7 = (vec2<f32>(x_140.x, x_140.y) / vec2<f32>(x_142.w, x_142.w));
  let x_153 : vec2<f32> = u_xlat7;
  let x_154 : vec4<f32> = textureSample(x_GrabTexture, sampler_GrabTexture, x_153);
  u_xlat2 = vec3<f32>(x_154.x, x_154.y, x_154.z);
  let x_156 : f32 = u_xlat1;
  let x_157 : f32 = u_xlat9;
  let x_161 : f32 = x_28.x_DistortionBlend;
  u_xlat9 = ((x_156 * x_157) + -(x_161));
  let x_164 : f32 = u_xlat9;
  u_xlat9 = clamp(x_164, 0.0f, 1.0f);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = vs_COLOR0;
  let x_171 : vec3<f32> = u_xlat2;
  let x_173 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_168.x, x_168.y, x_168.z)) + -(x_171));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_178 : f32 = u_xlat9;
  let x_180 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = u_xlat2;
  let x_184 : vec3<f32> = ((vec3<f32>(x_178, x_178, x_178) * vec3<f32>(x_180.x, x_180.y, x_180.z)) + x_183);
  let x_185 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = u_xlat4.x;
  SV_Target0.w = x_188;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

