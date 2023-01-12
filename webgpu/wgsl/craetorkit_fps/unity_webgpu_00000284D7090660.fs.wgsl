struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

@group(0) @binding(1) var x_BlendTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(1) @binding(0) var<uniform> x_149 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var x_92 : vec2<f32>;
  var x_103 : vec2<f32>;
  var x_113 : f32;
  var x_124 : f32;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_BlendTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.w;
  let x_35 : vec4<f32> = vs_TEXCOORD1;
  let x_37 : vec4<f32> = textureSample(x_BlendTex, sampler_MainTex, vec2<f32>(x_35.z, x_35.w));
  u_xlat0.y = x_37.y;
  let x_46 : vec2<f32> = vs_TEXCOORD0;
  let x_47 : vec4<f32> = textureSample(x_BlendTex, sampler_MainTex, x_46);
  let x_48 : vec2<f32> = vec2<f32>(x_47.z, x_47.x);
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_48.x, x_48.y);
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_52, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_61 : f32 = u_xlat1.x;
  u_xlatb1 = (x_61 < 0.00001f);
  let x_64 : bool = u_xlatb1;
  if (x_64) {
    let x_73 : vec2<f32> = vs_TEXCOORD0;
    let x_75 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_73, 0.0f);
    SV_Target0 = x_75;
  } else {
    let x_77 : vec4<f32> = u_xlat0;
    let x_79 : vec4<f32> = u_xlat0;
    let x_81 : vec2<f32> = max(vec2<f32>(x_77.z, x_77.w), vec2<f32>(x_79.x, x_79.y));
    let x_82 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_82.w);
    let x_85 : f32 = u_xlat1.y;
    let x_87 : f32 = u_xlat1.x;
    u_xlatb1 = (x_85 < x_87);
    let x_90 : bool = u_xlatb1;
    if (x_90) {
      let x_95 : vec4<f32> = u_xlat0;
      x_92 = vec2<f32>(x_95.x, x_95.z);
    } else {
      x_92 = vec2<f32>(0.0f, 0.0f);
    }
    let x_99 : vec2<f32> = x_92;
    let x_100 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_99.x, x_100.y, x_99.y, x_100.w);
    let x_102 : bool = u_xlatb1;
    if (x_102) {
      x_103 = vec2<f32>(0.0f, 0.0f);
    } else {
      let x_107 : vec4<f32> = u_xlat0;
      x_103 = vec2<f32>(x_107.y, x_107.w);
    }
    let x_109 : vec2<f32> = x_103;
    let x_110 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_110.x, x_109.x, x_110.z, x_109.y);
    let x_112 : bool = u_xlatb1;
    if (x_112) {
      let x_117 : f32 = u_xlat0.x;
      x_113 = x_117;
    } else {
      let x_120 : f32 = u_xlat0.y;
      x_113 = x_120;
    }
    let x_121 : f32 = x_113;
    u_xlat0.x = x_121;
    let x_123 : bool = u_xlatb1;
    if (x_123) {
      let x_129 : f32 = u_xlat0.z;
      x_124 = x_129;
    } else {
      let x_132 : f32 = u_xlat0.w;
      x_124 = x_132;
    }
    let x_133 : f32 = x_124;
    u_xlat0.y = x_133;
    let x_136 : vec4<f32> = u_xlat0;
    u_xlat6 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(1.0f, 1.0f));
    let x_140 : vec4<f32> = u_xlat0;
    let x_142 : f32 = u_xlat6;
    let x_144 : vec2<f32> = (vec2<f32>(x_140.x, x_140.y) / vec2<f32>(x_142, x_142));
    let x_145 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
    let x_154 : vec4<f32> = x_149.x_MainTex_TexelSize;
    u_xlat1 = (vec4<f32>(x_154.x, x_154.y, x_154.x, x_154.y) * vec4<f32>(1.0f, 1.0f, -1.0f, -1.0f));
    let x_159 : vec4<f32> = u_xlat2;
    let x_160 : vec4<f32> = u_xlat1;
    let x_162 : vec2<f32> = vs_TEXCOORD0;
    u_xlat1 = ((x_159 * x_160) + vec4<f32>(x_162.x, x_162.y, x_162.x, x_162.y));
    let x_168 : vec4<f32> = u_xlat1;
    let x_170 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_168.x, x_168.y), 0.0f);
    u_xlat2 = x_170;
    let x_174 : vec4<f32> = u_xlat1;
    let x_176 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_174.z, x_174.w), 0.0f);
    u_xlat1 = x_176;
    let x_177 : vec4<f32> = u_xlat0;
    let x_179 : vec4<f32> = u_xlat1;
    u_xlat1 = (vec4<f32>(x_177.y, x_177.y, x_177.y, x_177.y) * x_179);
    let x_181 : vec4<f32> = u_xlat0;
    let x_183 : vec4<f32> = u_xlat2;
    let x_185 : vec4<f32> = u_xlat1;
    SV_Target0 = ((vec4<f32>(x_181.x, x_181.x, x_181.x, x_181.x) * x_183) + x_185);
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

